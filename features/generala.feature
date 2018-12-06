Feature: Generala

Scenario: Pagina inicial
	Given llego al inicio
	Then debo ver "Generala"

Scenario: Pagina Inicial veo dados
Given llego al inicio
	Then debo ver "<li>"

Scenario: Pagina Inicial veo  
Given llego al inicio
When jugador tira dados
Then debo ver "Generala"


 
