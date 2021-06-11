namespace :discord_bot do
  desc "TODO"
  task send_message: :environment do
    puts "What's the daily bosses ? Let's see..."
    SendDailyBoss.call
    puts "Wow ! Nice message ;)"
  end

end
