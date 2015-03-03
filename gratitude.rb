require 'sinatra'

get '/' do
  "I'm grateful"
end

get '/gratitude' do
  "3 things to be grateful for"
end

get '/gratitude/:user' do
  user = params[:user]
  "Be grateful #{user}!"
end
