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

  @index = 0
  @selecciones = @@generala.getSeleccionDado
  @@generala.getSeleccionDado.each do |seleccion|
	if seleccion != 0
		@selecciones[@index] = "<li>"+ (@index+1).to_s + " - " + seleccion.to_s + "<input type='radio' name='dado' value='"+ (@index+1).to_s + "'/></li>"
	else
		@selecciones[@index] = "-"
	end
	@index=@index+1
  end  
  
  erb :home
end

post '/seleccionardados' do
  @@generala.setDadoSelecionado params["dado"].to_i
  @images = ["","","","",""]
  
  @index = 0
  @@generala.tirarDados
  @@generala.getDados.each do |dado|
	@images[@index] = "<img src='./images/dado"+dado.to_s+".png'/>"
	@index=@index+1
  end

  @selecciones = []
  erb :home
end
