Feature: VentaPorContingencia

  Como usuario del sistema
  Quiero registrar ventas por contingencia
  Para asegurar la emisión correcta de comprobantes en modo contingencia

Background:
  Given el usuario ingresa al ambiente 'http://localhost:31096/'
  When el usuario inicia sesión con usuario 'admin@plazafer.com' y contraseña 'calidad'
  And accede al módulo 'Venta'
  And accede al submódulo 'Venta por Contingencia'

@RegistrarVentaPorContingencia
Scenario Outline: Registro de venta por contingencia - Casos 1 al 20
  When el usuario selecciona el producto '<producto>'
  And define la cantidad '<cantidad>'
  And define IGV '<igv>'
  And define detalle unificado '<detalle>'
  And selecciona el documento '<documento>'
  And ingresa el DNI '<dni>'
  And ingresa el RUC '<ruc>'
  And escribe observación '<observacion>'
  And define la fecha de emisión '<emision>'
  And define la entrega '<entrega>'
  Then <resultado>

  Examples:
| caso | producto | cantidad | igv | detalle | documento | dni | ruc | observacion | emision | entrega | resultado |
|  1 | 88008-1 | 10 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | la venta se genera correctamente |
|  2 | 0 | 10 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | la venta se genera correctamente |
|  3 | 88008-1 | 0 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | la venta se genera correctamente |
|  4 | 0 | 0 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | la venta se genera correctamente |
|  5 | 88008-1 | 10 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | la venta se genera correctamente |
|  6 | 0 | 10 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | la venta se genera correctamente |
|  7 | 88008-1 | 0 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | la venta se genera correctamente |
|  8 | 0 | 0 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | la venta se genera correctamente |
|  9 | 88008-1 | 10 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | la venta se genera correctamente |
| 10 | 0 | 10 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | la venta se genera correctamente |
| 11 | 88008-1 | 0 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | la venta se genera correctamente |
| 12 | 0 | 0 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | la venta se genera correctamente |
| 13 | 88008-1 | 10 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | la venta se genera correctamente |
| 14 | 0 | 10 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | la venta se genera correctamente |
| 15 | 88008-1 | 0 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | la venta se genera correctamente |
| 16 | 0 | 0 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | la venta se genera correctamente |
| 17 | 88008-1 | 10 | 1 | 1 | 0 | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | la venta se genera correctamente |
| 18 | 0 | 10 | 1 | 1 | 0 | 76018810 | 0 | 0 | 0 | 0 | la venta se genera correctamente |
| 19 | 88008-1 | 0 | 1 | 1 | 0 | 76018810 | 0 | Ninguno | 0 | inmediata | la venta se genera correctamente |
| 20 | 0 | 0 | 1 | 1 | 0 | 76018810 | 0 | 0 | 0 | 0 | la venta se genera correctamente |