Features: Consulta Tottus Nataniel
	Scenario: buscar la pagina de Tottus Nataniel
	Given Navegar en la url "http://www.google.com"
	When buscar "Tottus Nataniel" en google
	Then mostrar todos los elementos

	Scenario: ir a la pagina Tottus Nataniel
	When seleccionar opcion sitio web
	Then mostrar pagina Tottus Nataniel

	Scenario: buscar "seccion recetas"
	When seleccionar seccion recetas
	Then ver pagina de recetas

	Scenario: ir a la receta corona de rollitos de canela
	When seleccionar opcion dificultad "alta" 
	AND seleccionar "corona rollitos de canela"
	Then ver receta

	Scenario: buscar si la receta contiene canela y azucar rubia
	When buscar "canela"
	And buscar "azúcar rubia"
	Then encontrado
