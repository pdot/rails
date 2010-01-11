
require 'logger'
require 'English'
# A logger for use with pl_analyze and other tools that expect syslog-style log output.
# Jan  2 03:38:05 topfunky postfix/postqueue[2947]: warning blah blah blah
class Hodel3000CompliantLogger < Logger
  def format_message(severity, timestamp, progname, msg)
    "#{timestamp.strftime("%b %d %H:%M:%S")} #{hostname} rails[#{$PID}]: #{msg2str(msg).gsub(/\n/, '').lstrip}\n"
  end

  private
  def hostname
    @parsed_hostname ||= Socket.gethostname.split('.').first
  end

  def msg2str(msg)
    case msg
    when ::String
      msg
    when ::Exception
      "#{ msg.message } (#{ msg.class }): " <<
      (msg.backtrace || []).join(" | ")
    else
      msg.inspect
    end
  end
end