require 'sinatra'
require 'mongo_mapper'
require './entry_service.rb'

configure do
  MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
  MongoMapper.database = 'journal'
end

get '/' do
  "I'm grateful"
end

get '/gratitude' do
  "3 things to be grateful for"
  time = Time.now
  things = ["Gordita de chicharron","Hablar con gente","Ultimo día de frio"]
  entry_service = EntryService.new
  entry_service.save_entry(time,things)
end

get '/gratitude/:user' do
  user = params[:user]
  "Be grateful #{user}!"
end
