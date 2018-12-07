class Generala
	def initialize
		@dados = []
		@juego = [false, false, false, false, false, false, false, false, false, false]
		@dadosPrueba = nil
		@puntos = 0
		@puntosMano = 0
		@juegoActual = ""
	end
	
	def getDados
		return @dados
	end
	def getJuegoCompleto
			return @juego
	end		
	def setDados dadosPrueba
		@dadosPrueba = dadosPrueba
	end

	def setPuntoMano punto
		@puntosMano = punto
	end

	def getPuntoMano 
		return @puntosMano	
	end	
	def getPuntosAcumulados
		return @puntos
	end
	def acumularPuntos 
		@puntos += getPuntoMano
	end
	def setJuegoActual juego
		@juegoActual = juego
	end
	def getJuegoActual
		return @juegoActual
	end	

	def tirarDados
		if @dadosPrueba == nil
			@dados = [rand(6) + 1, rand(6) + 1, rand(6) + 1, rand(6) + 1, rand(6) + 1]
		else 
			@dados = @dadosPrueba
			@dadosPrueba = nil		
		end 
		verificarJuego
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
			return ok
	end

	
	def verificarJuego
		setPuntoMano 0
		setJuegoActual "No hay Juego"
		if getIsEscalera && @juego[9] == false
				setPuntoMano 25
				acumularPuntos
				setJuegoActual "Hay Escalera"
		end
		if getIsFull && @juego[6] == false
				setPuntoMano 35
				acumularPuntos
				setJuegoActual "Hay Full"
		end
		if getIsPoker && @juego[7] == false
				setPuntoMano 45
				acumularPuntos
				setJuegoActual "Hay Poker"
		end
		if getIsGenerala && @juego[8] == false
				setPuntoMano 60
				acumularPuntos
				setJuegoActual "Hay Generala"
		end

	end
	


end
