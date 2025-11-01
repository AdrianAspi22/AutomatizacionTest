Feature: TomarAtencion

Background: 
Given el usuario ingresa al ambiente 'https://pruebas-qa.sigesonline.com/'
When el usuario inicia sesión con usuario 'admin@plazafer.com' y contraseña 'calidad'
And accede al módulo 'Restaurante'
And accede al submódulo 'Atencion'

@ItemDeUnaOrdenAtencionConMesa
Scenario: Registro de orden con ítem y cantidad positiva
	Given Se selecciona el ambiente 'PRINCIPAL'
	And Seleccion de la mesa '1' en estado 'disponible'
	And Se selecciona el mozo 'DIEGO EDUARDO CRUZ ORELLANA'
	When Se ingresa las siguientes ordenes:
	| Orden		| Concepto									| Cantidad	| Anotacion			|
	| ITEM		| CARTA 1/4 POLLO A LA BRASA C/PT			| 2			| Sin ensalada		|
	| ITEM		| BEBIDAS 1/2 JARRA DE CHICHA MORADA		| 1			|	hi				|
	
	Then Se procede a 'guardar' la orden ''
