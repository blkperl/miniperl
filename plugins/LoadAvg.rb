require '~/work/miniperl/plugins/plugin_helper'

class LoadAvg
  include Cinch::Plugin
  match /loadavg (.+)/

  def search(query)
    output = `ssh -C #{query} "uptime"`
    output.scan(/^.*average:(.*)/)
    $1.to_s.strip
  end

  def execute(m, query)
    m.reply(search(query))
  end

end
