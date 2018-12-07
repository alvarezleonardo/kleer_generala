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
		expect( juego.getIsPoker ).to eq true
	end

	it "Tirada de dados y verificar que no es poker" do
		juego = Generala.new
		juego.setDados [4, 4, 5, 6, 5]
		juego.tirarDados
		expect( juego.getIsPoker ).to eq false
	end

	it "Tirada de dados y verificar si da full" do
		juego = Generala.new
		juego.setDados [1, 1, 2, 2, 2]
		juego.tirarDados
		expect( juego.getIsFull ).to eq true
	end

	it "Tirada de dados y verificar que no es full" do
		juego = Generala.new
		juego.setDados [1, 2, 2, 2, 3]
		juego.tirarDados
		expect( juego.getIsFull ).to eq false
	end


	it "Tirada de dados y verificar si es generala" do
		juego = Generala.new
		juego.setDados [1, 1, 1, 1, 1]
		juego.tirarDados
		expect( juego.getIsGenerala ).to eq true
	end

	it "Tirada de dados y verificar si no es generala" do
		juego = Generala.new
		juego.setDados [1, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getIsGenerala ).to eq false
	end


	it "Tirada de dados y verificar si es escalera" do
		juego = Generala.new
		juego.setDados [1, 2, 3, 4, 5]
		juego.tirarDados
		expect( juego.getIsEscalera ).to eq true
	end

	it "Tirada de dados y verificar si no es escalera" do
		juego = Generala.new
		juego.setDados [1, 3, 4, 5, 6]
		juego.tirarDados
		expect( juego.getIsEscalera ).to eq false
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

end

