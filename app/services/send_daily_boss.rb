class SendDailyBoss < ApplicationService
  def initialize
    @message_content = ""
    @fields_fr = []
    @fields_en = []
    @fields_es = []
    @fields_pt = []
    @day_interval = 0
  end

  def call
    get_day_interval
    puts @day_interval
    daily_bosses
    puts @fields
    # build_message
    # puts @message_content
    SendMessageBotJob.perform_now(@fields_fr, "830072034633449512")
    sleep 2
    SendMessageBotJob.perform_now(@fields_en, "1165248851020632165")
    sleep 2
    SendMessageBotJob.perform_now(@fields_es, "1165249747871866990")
    sleep 2
    SendMessageBotJob.perform_now(@fields_pt, "1165250069969244160")
  end

  private

  def get_day_interval
    end_date =  Time.new(Time.now.year, Time.now.month, Time.now.day, 0, 0, 0, "+02:00")
    puts end_date
    @day_interval = end_date.tv_sec/60/60/24 - ENV['ORIGIN_DATE'].to_i
  end

  def daily_bosses
    LevelRange.all.each do |level_range|
    modulo = (@day_interval % (level_range.number_of_bosses * 3)) + 1
    puts "modulo = #{modulo}"
      level_range.loop_pattern.bosses.all.each do |boss|
        if  boss.first_encounter == modulo || 
            boss.second_encounter == modulo || 
            boss.third_encounter == modulo
          # @bosses << Boss.where(first_encounter: modulo).or(Boss.where(second_encounter: modulo)).or(Boss.where(third_encounter: modulo))
          @fields_fr << { "name": boss.loop_pattern.level_range.range, "value": "[#{boss.name_fr}, \n#{boss.location_fr}](#{boss.url_fr})", "inline": true }
          @fields_en << { "name": boss.loop_pattern.level_range.range, "value": "[#{boss.name_en}, \n#{boss.location_en}](#{boss.url_en})", "inline": true }
          @fields_es << { "name": boss.loop_pattern.level_range.range, "value": "[#{boss.name_es}, \n#{boss.location_es}](#{boss.url_es})", "inline": true }
          @fields_pt << { "name": boss.loop_pattern.level_range.range, "value": "[#{boss.name_pt}, \n#{boss.location_pt}](#{boss.url_pt})", "inline": true }
        end
      end
    end
  end
  
  # def build_message
  #   @message_content = "* #{LevelRange.find_by(range: "6 à 20").range} : #{@bosses[0].name}, #{@bosses[0].location}\n* #{LevelRange.find_by(range: "21 à 35").range} : #{@bosses[1].name}, #{@bosses[1].location}\n* #{LevelRange.find_by(range: "36 à 50").range} : #{@bosses[2].name}, #{@bosses[2].location}\n* #{LevelRange.find_by(range: "51 à 65").range} : #{@bosses[3].name}, #{@bosses[3].location}\n* #{LevelRange.find_by(range: "66 à 80").range} : #{@bosses[4].name}, #{@bosses[4].location}\n* #{LevelRange.find_by(range: "81 à 95").range} : #{@bosses[5].name}, #{@bosses[5].location}\n* #{LevelRange.find_by(range: "96 à 110").range} : #{@bosses[6].name}, #{@bosses[6].location}\n* #{LevelRange.find_by(range: "111 à 125").range} : #{@bosses[7].name}, #{@bosses[7].location}\n* #{LevelRange.find_by(range: "126 à 140").range} : #{@bosses[8].name}, #{@bosses[8].location}\n* #{LevelRange.find_by(range: "141 à 155").range} : #{@bosses[9].name}, #{@bosses[9].location}\n* #{LevelRange.find_by(range: "156 à 170").range} : #{@bosses[10].name}, #{@bosses[10].location}\n* #{LevelRange.find_by(range: "171 à 185").range} : #{@bosses[11].name}, #{@bosses[11].location}\n* #{LevelRange.find_by(range: "186 à 200").range} : #{@bosses[12].name}, #{@bosses[12].location}\n* #{LevelRange.find_by(range: "201 à 215").range} : #{@bosses[13].name}, #{@bosses[13].location}\n* #{LevelRange.find_by(range: "216 à 230").range} : #{@bosses[14].name}, #{@bosses[14].location}"
  # end

  # def send_request
  # end
end