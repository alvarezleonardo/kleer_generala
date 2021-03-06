require "./lib/Generala.rb"

describe "Partido Generala" do
	it "Tirada de dados para generala" do
		juego = Generala.new
		expect( juego.tirarDados ).to be_an_instance_of(Array) 
		expect( juego.tirarDados.length ).to eq 5 
	end

	it "Tirada de dados y verificar si da poker" do
		juego = Generala.new
		juego.setDados [2, 3, 2, 2, 2]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "Hay Poker"
	end

	it "Tirada de dados y verificar que no es poker" do
		juego = Generala.new
		juego.setDados [4, 4, 5, 6, 5]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "No hay Juego"
	end

	it "Tirada de dados y verificar si da full" do
		juego = Generala.new
		juego.setDados [1, 1, 2, 2, 2]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "Hay Full"
	end

	it "Tirada de dados y verificar que no es full" do
		juego = Generala.new
		juego.setDados [1, 2, 2, 2, 3]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "No hay Juego"
	end


	it "Tirada de dados y verificar si es generala" do
		juego = Generala.new
		juego.setDados [1, 1, 1, 1, 1]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "Hay Generala"
	end

	it "Tirada de dados y verificar si no es generala" do
		juego = Generala.new
		juego.setDados [4, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "No hay Juego"
	end


	it "Tirada de dados y verificar si es escalera" do
		juego = Generala.new
		juego.setDados [1, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "Hay Escalera"
	end

	it "Tirada de dados y verificar si no es escalera" do
		juego = Generala.new
		juego.setDados [1, 3, 4, 5, 6]
		juego.tirarDados
		expect( juego.getJuegoActual ).to eq "No hay Juego"
	end


	it "Tirada de dados y verificar puntos mano escalera" do
		juego = Generala.new
		juego.setDados [1, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getPuntoMano ).to eq 25
	end

it "Tirada de dados y verificar puntos mano full" do
		juego = Generala.new
		juego.setDados [1, 1, 2, 2, 2]
		juego.tirarDados
		expect( juego.getPuntoMano ).to eq 35
	end

it "Tirada de dados y verificar puntos mano poker" do
		juego = Generala.new
		juego.setDados [2, 3, 2, 2, 2]
		juego.tirarDados
		expect( juego.getPuntoMano ).to eq 45
	end

it "Tirada de dados y verificar puntos mano generala" do
		juego = Generala.new
		juego.setDados [1, 1, 1, 1, 1]
		juego.tirarDados
		expect( juego.getPuntoMano ).to eq 60
	end

it "Tirada de dados y verificar puntos acumulados" do
		juego = Generala.new
		juego.setDados [1, 1, 1, 1, 1]
		juego.tirarDados
	  juego.setDados [1, 1, 1, 1, 5]
		juego.tirarDados
		expect( juego.getPuntosAcumulados ).to eq 105
	end

	it "Selección  dados debe ser un array de 6" do
		juego = Generala.new
		juego.setDados [4, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getSeleccionDado).to be_an_instance_of(Array) 
		expect( juego.getSeleccionDado.length ).to eq 6
	end


	it "Verificamos que cuente bien los numeros" do
		juego = Generala.new
		juego.setDados [4, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getSeleccionDado).to eq [0, 1, 1, 2, 1, 0]
	
	end

	it "Verificamos que cuente bien los numeros si ya suamos uno" do
		juego = Generala.new
		juego.setDados [4, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getSeleccionDado).to eq [0, 1, 1, 2, 1, 0]
		juego.setDadoSelecionado 4
		juego.setDados [4, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getSeleccionDado ).to eq [0, 1, 1, 0, 1, 0]
	
	end


it "Verificamos que el juego de al tocar las combinaciones de numero y jugadas" do
		juego = Generala.new
		juego.setDados [4, 2, 3, 4, 5]
		juego.tirarDados
		juego.setDadoSelecionado 4
		juego.setDados [4, 4, 4, 4, 5]
		juego.tirarDados
		juego.setDados [4, 4, 4, 5, 5]
		juego.tirarDados
		juego.setDados [4, 4, 4, 4, 4]
		juego.tirarDados
		expect( juego.getJuegoCompleto ).to eq [0, 0, 0, 8, 0, 0, 35, 45, 60, 0]
	
	end

end

