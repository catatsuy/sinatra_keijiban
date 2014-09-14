require 'sinatra'

get '/' do
  erb :index
end

get '/hello' do
  "Hello world"
end

get '/example' do
  erb :example
end
