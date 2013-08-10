require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

get '/application.js' do
  coffee :application
end
