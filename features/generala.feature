Feature: Generala

Scenario: Pagina inicial
	Given llego al inicio
	Then debo ver "Generala"

Scenario: Pagina Inicial veo dados 1 2 3 4 5
Given llego al inicio
	Then debo ver "1" And
	Then debo ver "2" And
	Then debo ver "3" And
	Then debo ver "4" And
	Then debo ver "5" 
