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

end
