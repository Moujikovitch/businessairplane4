require 'sinatra'
require 'shotgun'
require 'sinatra/activerecord'

set :database,  "sqlite3:donnees_db.sqlite3"

class Dataavion < ActiveRecord::Base
end

get '/' do
  erb :index
end

get '/menu' do
	@datas=Dataavion.all
  	erb :menu
end

get '/add' do
	erb :add
end

post '/add' do
	Dataavion.create(params)
	redirect '/'
end

get '/test' do
  erb :test
end
