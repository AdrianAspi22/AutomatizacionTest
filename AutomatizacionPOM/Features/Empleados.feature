Feature: Empleados

A short summary of the feature
Background:
  Given el usuario ingresa al ambiente 'http://localhost:31096/'
  When el usuario inicia sesión con usuario 'admin@plazafer.com' y contraseña 'calidad'
  And accede al módulo 'Empleado'
  And accede al submódulo 'Ver'

@CambiarEstadoCivilEmpleado
Scenario Outline: Cambiar el estado Civil de los empleados - Casos 1 al 2
	When Seleccion un empleado a editar
	And Cambiar el estado civil a '<EstadoInicial>'
	And Guardar estado civil
	And Editar el mismo empleado
	And Volve Cambiar el estado civil a '<EstadoFinal>'
	Then Volvel a Guardar estado civil 

Examples: 
| EstadoInicial | EstadoFinal |
| No especificado  | Soltero(a)       |
| No especificado  | Casado(a)        |
| No especificado  | Divorciado(a)    |
| No especificado  | Viudo(a)         |
| Soltero(a)       | Casado(a)        |
| Soltero(a)       | Divorciado(a)    |
| Soltero(a)       | Viudo(a)         |
| Soltero(a)       | No especificado  |
| Casado(a)        | Divorciado(a)    |
| Casado(a)        | Viudo(a)         |
| Casado(a)        | Soltero(a)       |
| Casado(a)        | No especificado  |
| Divorciado(a)    | Casado(a)        |
| Divorciado(a)    | Viudo(a)         |
| Divorciado(a)    | Soltero(a)       |
| Divorciado(a)    | No especificado  |
| Viudo(a)         | Casado(a)        |
| Viudo(a)         | Divorciado(a)    |
| Viudo(a)         | Soltero(a)       |
| Viudo(a)         | No especificado  |







