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
  erb :be_grateful
end

post '/gratitude' do
  "3 things to be grateful for"
  time = params[:date]
  things = params[:things]
  entry_service = EntryService.new
  entry_service.save_entry(time,things)
end



get '/gratitude/list' do
  entry_service = EntryService.new
  @entries = entry_service.find_entries
  erb :list
end
