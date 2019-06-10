Feature: Pruebas de la bolsa de compras. Se utilizara como ejemplo dos parkas para dama

	Scenario: Entrar en la pagina web
		Given Ir a la url "https://www.falabella.com"
		When seleccionar en el menu Categorias Moda
		Then se desplegan todas las opciones 

	Scenario: Cliente selecciona articulos 
		When cliente selecciona parkas <id1> 
		Then se carga informacion del articulo

	Scenario: cliente selecciona color y talla producto1
		Given producto <id1> seleccionado
		When cliente selecciona <color1> y <talla1>
		And selecciona opcion "agregar a la bolsa"
		Then se carga producto en la bolsa

	Scenario: seguir agregando productos
		When cliente seleccion opcion "seguir comprando"
		Then sigue visualizando el producto

	Scenario: cliente selecciona color y talla producto2
		Given producto <id2> seleccionado
		When cliente selecciona <color2> y <talla2>
		And selecciona opcion "agregar a la bolsa"


	Scenario: cliente no desea seguir comprando
		When cliente selecciona la opcion "ver bolsa de compras"
		Then se carga la pagina de bolsa de compras

	Scenario: revisar bolsa de compras
		When cliente selecciona la opcion de bolsa de compras
		Then se muestran los articulos

	Scenario: eliminar productos de la bolsa
		Given producto <id1> seleccionado
		When cliente selecciona "eliminar" 
		Then se elimina el articulo de la bolsa

	Scenario: comprar con retiro en tienda
		When cliente selecciona "ir a comprar"
		And cliente selecciona opcion "Retiro en tienda"
		And selecciona "region"
		And selecciona "comuna"
		And selecciona primera opcion
		Then se cargan los datos del retiro

	Scenario: pagar con tarjeta de credito
		When cliente selecciona "continuar"
		And selecciona "otras tarjetas de credito"
		And ingresa los datos de la tarjeta
		And selecciona "usar esta tarjeta"
		Then se procesa el pago
		


