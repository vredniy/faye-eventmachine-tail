require 'eventmachine-tail'
require 'faye'

require './lib/ansi2html'

$stdout.sync = true
#puts ENV['LOG_FILE']

if log_file = ENV['LOG_FILE']
  EM.run do
    client = Faye::Client.new('http://localhost:3333/faye')

    EM::file_tail(log_file) do |filetail, line|
      client.publish('/messages', "<b>#{Time.now.strftime('%m.%d %H:%M:%S')}<b> &mdash; #{Ansi2html::convert(line)}")
    end
  end
end