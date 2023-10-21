require "uri"
require "net/http"
require 'json'
require 'date'

class SendMessageBotJob < ApplicationJob
  queue_as :default

  def perform(fields, channel_id)
    Message.create(content: fields.join(""))
    
    if channel_id == "830072034633449512" #French title
      title_txt = "Ici Wak'Boss qui parle ! Voici les boss du #{Time.now.strftime("%d/%m/%y")}"
    elsif channel_id == "1165248851020632165" #English title
      title_txt = "This is Wak'Boss speaking! Here are the bosses of  #{Time.now.strftime("%d/%m/%y")}"
    elsif channel_id == "1165249747871866990" #Spanish title
      title_txt = "¡Wak'Boss al habla! Estos son los jefes del #{Time.now.strftime("%d/%m/%y")}"
    elsif channel_id == "1165250069969244160" #Portuguese title
      title_txt =  "Aqui é Wak'Boss falando! Aqui estão os chefes em #{Time.now.strftime("%d/%m/%y")}"
    end
    
    url_message = URI("https://discord.com/api/channels/#{channel_id}/messages")

    https = Net::HTTP.new(url_message.host, url_message.port)
    https.use_ssl = true

    # puts "content:"
    # print "> "
    # content = "hello" #gets.chomp
    request = Net::HTTP::Post.new(url_message)

    request["Authorization"] = ENV['BOT_TOKEN']
    request["Content-Type"] = "application/json"

    request.body = {
      tts: false,
      embeds: [ 
        {
          "title": title_txt,
          "color": 11634956,
          "fields": fields
        }
      ]
    }.to_json

    # ap "COUCOU ON EST ICI"
    # ap request.body.to_json
    # ap "ON VA SEND LA REQUEST \n"
    response = https.request(request)

    # ap response.message
    # ap "ET HOP ON A SEND LE MESSAGE !"
    unless response.message == "Unauthorized"
      message_id = JSON.parse(response.read_body)["id"]
      # ap message_id
      url_crosspost = URI("https://discord.com/api/channels/#{channel_id}/messages/#{message_id}/crosspost")
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
