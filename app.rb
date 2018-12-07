require 'sinatra'
require './lib/Generala.rb'

get '/' do
    @@generala = Generala.new
    @images = []
    erb :home
end

post '/tirardados' do
  @@generala.tirarDados
  @images = ["","","","",""]
  
  @index = 0
  @@generala.getDados.each do |dado|
	@images[@index] = "<img src='./images/dado"+dado.to_s+".png'/>"
	@index=@index+1
  end
  
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
