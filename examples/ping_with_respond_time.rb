# Pinging the bot will also tell you the time it takes the bot to send the message

require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'B0T.T0KEN.here', application_id: 160123456789876543, prefix: '!'

bot.command(:pheix) do |event|
  m = event.respond('DO YOU WISH TO ENGAGE IN COMBAT')
  m.edit "Pong! Time taken: #{Time.now - event.timestamp} seconds."
  nil
end

bot.run
