require '~/work/miniperl/plugins/plugin_helper'

class DefendRuby
  include Cinch::Plugin
  match /\s*(ruby--)/, use_prefix: false 


  def execute(m)
    m.reply("ruby++")
  end

end
