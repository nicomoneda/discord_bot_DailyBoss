namespace :discord_bot do
  desc "TODO"
  task send_message: :environment do
    puts "What's the daily bosses ? Let's see..."
      unless Message.last.created_at.day == Time.now.day
        SendDailyBoss.call
        puts "Wow ! Nice message ;)"
      end
  end

end
