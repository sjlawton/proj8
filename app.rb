require 'sinatra'

class MyWebApp < Sinatra::Base
	get '/' do 
		"Welcome to my webpage"
	end
end