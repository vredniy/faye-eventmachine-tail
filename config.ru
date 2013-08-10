require 'faye'
require './app'

Faye::WebSocket.load_adapter('thin')

use Faye::RackAdapter, mount: '/faye', timeout: 25
run Sinatra::Application