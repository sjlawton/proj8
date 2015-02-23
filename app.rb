require 'sinatra'
require 'holidapi'
require 'date'
class MyWebApp < Sinatra::Base
	get '/' do 
		@holidays = HolidApi.get(month:Time.now.month, year:Time.now.year)
    @birthdays = HolidApi.get(month:'11',year:'1992')
		erb:index
	end
end