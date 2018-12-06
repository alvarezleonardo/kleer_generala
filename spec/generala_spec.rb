require "./lib/Generala.rb"

describe "Partido Generala" do
	it "Tirada de dados para generala" do
		juego = Generala.new
		expect( juego.tirarDados ).to be_an_instance_of(Array) 
		expect( juego.tirarDados.length ).to eq 5 
	end

	it "Tirada de dados y verificar si da poker" do
		juego = Generala.new
		juego.setDados [1, 2, 2, 2, 2]
		expect( juego.getIsPoker ).to eq true
	end

	it "Tirada de dados y verificar que no es poker" do
		juego = Generala.new
		juego.setDados [1, 2, 2, 2, 3]
		expect( juego.getIsPoker ).to eq false
	end

it "Tirada de dados y verificar si da full" do
		juego = Generala.new
		juego.setDados [1, 1, 2, 2, 2]
		expect( juego.getIsFull ).to eq true
	end

	it "Tirada de dados y verificar que no es full" do
		juego = Generala.new
		juego.setDados [1, 2, 2, 2, 3]
		expect( juego.getIsFull ).to eq false
	end


it "Tirada de dados y verificar si es generala" do
		juego = Generala.new
		juego.setDados [1, 1, 1, 1, 1]
		expect( juego.getIsGenerala ).to eq true
	end

	it "Tirada de dados y verificar si no es generala" do
		juego = Generala.new
		juego.setDados [1, 2, 3, 4, 5]
		expect( juego.getIsGenerala ).to eq false
	end

end

