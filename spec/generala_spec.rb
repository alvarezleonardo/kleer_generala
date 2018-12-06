require "./lib/Generala.rb"

describe "Partido Generala" do
	it "Tirada de dados para generala" do
		juego = Generala.new
		expect( juego.tirarDados ).to eq [1,2,3,4,5] 
	end

end
