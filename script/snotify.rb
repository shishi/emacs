#!/usr/bin/env ruby
class String
  def elispify
    gsub(/[\"\\]/, '\\\\\&')
  end
end


def eval_elisp(elisp)
  system "emacsclient", "-n", "--eval", elisp
end

def notify(str)
  if str.empty?
    eval_elisp %Q!(snotify-update-mode-line-string "")!
  else
    eval_elisp %Q!(snotify-update-mode-line-string "[#{str.elispify}] ")!
  end
end

def execute(argv)
  notify "Start.."
  if system *argv
    notify "OK"
  else
    notify "NG(#{$?.exitstatus})"
  end
end

case ARGV.shift
when 'string'
  notify ARGV.join(' ')
when 'execute'
  execute ARGV
end
