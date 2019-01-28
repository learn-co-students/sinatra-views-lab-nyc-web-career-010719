# require 'DateTime'
require 'Time'
class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		erb :goodbye
	end

	get '/date' do
		date = Time.new.to_date.strftime('%A, %B %d,  %Y')
		erb :"/date", :locals => { :date => date }
		
		# erb :date
	end

end
