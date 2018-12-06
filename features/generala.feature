Feature: Generala

Scenario: Pagina inicial
	Given llego al inicio
	Then debo ver "Generala"

Scenario: Pagina Inicial veo  
Given llego al inicio
When jugador tira dados
Then debo ver Lista de dados


 
