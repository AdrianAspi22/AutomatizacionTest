Feature: preubaButton

A short summary of the feature
Background:
  Given el usuario ingresa al ambiente 'http://localhost:31096/'
  When el usuario inicia sesión con usuario 'admin@plazafer.com' y contraseña 'calidad'
  And accede al módulo 'Venta'
  And accede al submódulo 'Venta Modo Caja'

@tag1
Scenario: probar radio button metodo pago
	Given seleccionar el prmeri Button CR
	When Cambiar el siguiente Button CO
	And probar debito
	Then funcionalidad completa
