class SendDailyBoss < ApplicationService
  ORIGIN_DATE = Time.new(2021, 4, 9).tv_sec/60/60/24

  def initialize
    @bosses = []
    @message_content = ""
    @day_interval = 0
  end

  def call
    get_day_interval
    daily_bosses
    build_message
    SendMessageBotJob.perform_now(@message_content)
  end

  private

  def get_day_interval
    end_date =  Time.new(Time.now.year, Time.now.month, Time.now.day).tv_sec/60/60/24
    return @day_interval = end_date - ORIGIN_DATE
  end

  def daily_bosses
    LevelRange.all.each do |level_range|
    modulo = (@day_interval % (level_range.number_of_bosses * 3) + 1 )
      level_range.loop_pattern.boss.all.each do |boss|
        @bosses << boss.where(first_encounter: modulo).or(boss.where(second_encounter: modulo)).or(boss.where(third_encounter: modulo))
      end
    end
    ap @bosses
  end
  
  def build_message
    @message_content = "#{LevelRange.find_by(range: "6 à 20").range} : #{@bosses(0).name}, #{@bosses(0).location} \n
                        #{LevelRange.find_by(range: "21 à 35").range} : #{@bosses(1).name}, #{@bosses(1).location} \n
                        #{LevelRange.find_by(range: "36 à 50").range} : #{@bosses(2).name}, #{@bosses(2).location} \n
                        #{LevelRange.find_by(range: "51 à 65").range} : #{@bosses(3).name}, #{@bosses(3).location} \n
                        #{LevelRange.find_by(range: "66 à 80").range} : #{@bosses(4).name}, #{@bosses(4).location} \n
                        #{LevelRange.find_by(range: "81 à 95").range} : #{@bosses(5).name}, #{@bosses(5).location} \n
                        #{LevelRange.find_by(range: "96 à 110").range} : #{@bosses(6).name}, #{@bosses(6).location} \n
                        #{LevelRange.find_by(range: "111 à 125").range} : #{@bosses(7).name}, #{@bosses(7).location} \n
                        #{LevelRange.find_by(range: "126 à 140").range} : #{@bosses(8).name}, #{@bosses(8).location} \n
                        #{LevelRange.find_by(range: "141 à 155").range} : #{@bosses(9).name}, #{@bosses(9).location} \n
                        #{LevelRange.find_by(range: "156 à 170").range} : #{@bosses(10).name}, #{bosses(10).location} \n
                        #{LevelRange.find_by(range: "171 à 185").range} : #{@bosses(11).name}, #{bosses(11).location} \n
                        #{LevelRange.find_by(range: "186 à 200").range} : #{@bosses(12).name}, #{bosses(12).location} \n
                        #{LevelRange.find_by(range: "201 à 215").range} : #{@bosses(13).name}, #{bosses(13).location} \n
                        "
  end

  # def send_request
  # end
end