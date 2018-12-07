Feature: Generala

Scenario: Pagina inicial
Given llego al inicio
Then debo ver "Generala"

Scenario: Tiro dados y veo listado  
Given llego al inicio
When jugador tira dados
Then debo ver Lista de dados

Scenario: Tiro dados y veo listado  
Given llego al inicio
When jugador tira dados
Then debo ver "Puntaje mano"

Scenario: Tiro dados y veo listado  
Given llego al inicio
When jugador tira dados
Then debo ver "Puntaje acumulado"

Scenario: Detecta full
Given llego al inicio
When Tira dados y sale 1 1 2 2 2
Then debo ver "Hay Full"

Scenario: Detecta full
Given llego al inicio
When Tira dados y sale 1 2 2 2 2
Then debo ver "Hay Poker"


 
