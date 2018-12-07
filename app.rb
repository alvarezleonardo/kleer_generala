require 'sinatra'
require './lib/Generala.rb'

get '/' do
	@@generala = Generala.new
    erb :home
end

post '/tirardados' do
  @@generala.tirarDados
  
  @juego= "No hay juego"
  if @@generala.getIsPoker
		@juego = "Hay Poker"
  elsif @@generala.getIsFull
		@juego = "Hay Full"
  elsif @@generala.getIsGenerala
	@juego = "Hay Generala"
  end
  erb :home
end
