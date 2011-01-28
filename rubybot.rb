require 'cinch'
require 'open-uri'
require 'nokogiri'
require 'cgi'
require 'openssl'



require '~/work/miniperl/plugins/UrbanDictionary'
require '~/work/miniperl/plugins/Google'
require '~/work/miniperl/plugins/LoadAvg'
require '~/work/miniperl/plugins/DefendRuby'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.cat.pdx.edu"
    c.nick = "miniperl"
    c.channels = ["#miniperl"]
    c.port = "6697"
    c.ssl = true
    c.plugins.plugins = [UrbanDictionary, Google, LoadAvg ]
  end
end

bot.start
