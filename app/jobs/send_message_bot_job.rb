require "uri"
require "net/http"
require 'json'
require 'date'

class SendMessageBotJob < ApplicationJob
  queue_as :default

  def perform(message_content)
    url_message = URI("https://discord.com/api/channels/830072034633449512/messages")

    https = Net::HTTP.new(url_message.host, url_message.port)
    https.use_ssl = true

    # puts "content:"
    # print "> "
    # content = "hello" #gets.chomp
    request = Net::HTTP::Post.new(url_message)

    request["Authorization"] = ENV['BOT_TOKEN']
    request["Content-Type"] = "application/json"

    request.body = {
      content: "Ici Wak'Boss qui parle ! Voici les Boss du #{Time.now.strftime("%d/%m/%y")} \n#{message_content}",
      tts: false
    }.to_json
    # request.body = message_content

    response = https.request(request)

    ap response.message

    unless response.message == "Unauthorized"
      message_id = JSON.parse(response.read_body)["id"]
      # ap message_id
      url_crosspost = URI("https://discord.com/api/channels/830072034633449512/messages/#{message_id}/crosspost")
      https = Net::HTTP.new(url_crosspost.host, url_crosspost.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(url_crosspost)
      request["Authorization"] = ENV['BOT_TOKEN']
      request["Content-Type"] = "application/json"
      response = https.request(request)
      puts response.read_body
    end
  end
end
