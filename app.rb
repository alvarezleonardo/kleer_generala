require 'sinatra'
require './lib/Generala.rb'

get '/' do
		@@generala = Generala.new
    erb :home
end

post '/tirardados' do
  @@generala.tirarDados
	erb :home
end
