class Generala
	def initialize
		@dados = []
		@dadosPrueba = nil
		@@puntos = 0
	end
	
	def getDados
		return @dados
	end
			
	
	def tirarDados
		if @dadosPrueba == nil
			@dados = [rand(6) + 1, rand(6) + 1, rand(6) + 1, rand(6) + 1, rand(6) + 1]
		else 
			@dados = @dadosPrueba
			@dadosPrueba = nil		
		end 
		return getDados
	end
	def getDadosOrdenados
		return @dados.sort 
	end

	def getCantDado numero
		dadosOrd = getDadosOrdenados				
		cont = 0		
		dadosOrd.each do |elemento|
			if numero == elemento
				cont += 1
			end
		end
		return cont
	end

	def setDados dadosPrueba
		@dadosPrueba = dadosPrueba
	end

	def getIsPoker
		ok = false		
		dadosOrd = getDadosOrdenados
		cantA = getCantDado dadosOrd[0]
		cantB = getCantDado dadosOrd[4]
		if (cantA == 1 and cantB == 4) or (cantB == 1 and cantA == 4)
			ok = true
		end
		return ok
	end
	
	def getIsFull
		ok = false		
		dadosOrd = getDadosOrdenados
		cantA = getCantDado dadosOrd[0]
		cantB = getCantDado dadosOrd[4]
		if (cantA == 2 and cantB == 3) or (cantB == 2 and cantA == 3)
				ok = true
		end
		return ok
	end


	def getIsGenerala
			ok = false		
			dadosOrd = getDadosOrdenados
			cantA = getCantDado dadosOrd[0]
			if (cantA == 5)
				ok = true
			end
			return ok
	end

	def getIsEscalera
			ok = true
			dadosOrd = getDadosOrdenados
			oldDado = 0			
			dadosOrd.each do |elemento|
				if !(elemento > oldDado && elemento == oldDado + 1)
					ok = false
				end
				oldDado = elemento
			end
			if ok == true
				
			end 			
			return ok
	end


end
