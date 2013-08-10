require 'eventmachine-tail'
require 'faye'

require './lib/ansi2html'

if log_file = ARGV[0]
  EM.run do
    client = Faye::Client.new('http://localhost:3000/faye')

    EM::file_tail(log_file) do |filetail, line|
      client.publish('/messages', "<b>#{Time.now.strftime('%m.%d %H:%M:%S')}<b> &mdash; #{Ansi2html::convert(line)}")
    end
  end
end
