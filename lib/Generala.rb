class Generala
	def initialize 
		@dados = [1, 2, 3, 4, 5]
		@puntos = 0
	end
	def getDados
		@dados = [rand(6) + 1, rand(6) + 1, rand(6) + 1, rand(6) + 1, rand(6) + 1]
		
		return @dados
	end

	def tirarDados
		return getDados
	end
	def getDadosOrdenados
		return @dados.sort 
	end

	def setDados dadosPrueba
		@dados = dadosPrueba
	end

	def getIsPoker
		ok = false		
		dadosOrd = getDadosOrdenados
		if dadosOrd[0] != dadosOrd[4] and (dadosOrd[0] == dadosOrd[3] or dadosOrd[4] == dadosOrd[3])
			ok = true
		end
		return ok
	end
	
def getIsFull
		ok = false		
		dadosOrd = getDadosOrdenados
		if dadosOrd[0] != dadosOrd[4] and dadosOrd[1] != dadosOrd[2] and dadosOrd[1] == dadosOrd[0] and dadosOrd[2] == dadosOrd[4]
			ok = true
		end
		return ok
	end
end
