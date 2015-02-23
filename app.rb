require 'sinatra'
require 'holidapi'
require 'date'
class MyWebApp < Sinatra::Base
	get '/' do 
    @month = (params['month'] && params['month'] != "") ? params['month'] : 11
    @year = (params['year'] && params['year'] != "") ? params['year'] : 1992
    @country = (params['country'] && params['country'] != "") ? params['country'] : 'us'
	begin
		@holidays = HolidApi.get(month:@month, year:@year, country:@country)
	rescue HolidApi::BadRequest => Error
    @holidays = 'Error, bad input'
	end
	erb:index
	end
end