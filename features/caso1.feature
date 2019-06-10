Feature: Estado de cuenta de una tarjeta de credito

	Scenario: Login de usuario valido
		Given En la pagina del banco <page>
		When usuario agrega <rut> AND <password>
		Then cliente entra en su sesión

	Scenario: Opcion tarjeta de credito
		When selecciona menu de tarjetas ded credito
		Then se despliegan las opciones

	Scenario: Cliente selecciona estado de cuenta
		Given cliente selecciona <opcion> estado de cuenta 
		Then se desplegan menú de estados de cuenta

	Scenario: cliente selecciona estado de cuenta nacional
		Given cliente selecciona <opcion_cta> estado de cuenta nacional
		Then se despliega estado del mes en curso

	Scenario: cliente selecciona estado de cuenta internacional
		Given cliente selecciona <opcion_cta> estado de cuenta internacional
		Then se despliega estado del mes en curso

	Scenario: cliente selecciona mes y año
		When <fecha> seleccionada este habilitada
		Then se muestra estado de cuenta

	Scenario: cliente descarga pdf
		When cliente solicita estado de cuenta <pdf> 
		Then se descarga correctamente el estado de cuenta



