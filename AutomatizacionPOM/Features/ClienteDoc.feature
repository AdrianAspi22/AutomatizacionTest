Feature: ClienteDoc

A short summary of the feature
Background:
  Given el usuario ingresa al ambiente 'http://localhost:31096/'
  When el usuario inicia sesión con usuario 'admin@plazafer.com' y contraseña 'calidad'
  And accede al módulo 'Venta'
  And accede al submódulo 'Venta por Contingencia'

@VerificarValidezDocCliente
Scenario: Verficar el documento del cliente
	Given Colocar el tipo de '<Documento>'
	When Colocar el número de documento '<NumeroDocumento>'
	Then El documento es '<validacion>'

Examples:
	| Documento | NumeroDocumento | validacion |
	| DNI       | 76018810        | valido     |
	| DNI       | 12345           | invalido   |
	| DNI       | 76018810123     | invalido   |
	| DNI       | abcdefg         | invalido   |
	| RUC       | 20172356720     | valido     |
	| RUC       | 1234567890      | invalido   |
	| RUC       | 2012345678901   | invalido   |
	| RUC       | 20abcdefghi     | invalido   |
