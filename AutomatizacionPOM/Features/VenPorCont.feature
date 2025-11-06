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
  Then la venta se genera correctamente

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
| 21 | 88008-1 | 10 | 0 | 1 | 0 | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 22 | 0 | 10 | 0 | 1 | 0 | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 23 | 88008-1 | 0 | 0 | 1 | 0 | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 24 | 0 | 0 | 0 | 1 | 0 | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 25 | 88008-1 | 10 | 1 | 0 | 0 | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 26 | 0 | 10 | 1 | 0 | 0 | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 27 | 88008-1 | 0 | 1 | 0 | 0 | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 28 | 0 | 0 | 1 | 0 | 0 | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 29 | 88008-1 | 10 | 0 | 0 | 0 | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 30 | 0 | 10 | 0 | 0 | 0 | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 31 | 88008-1 | 0 | 0 | 0 | 0 | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 32 | 0 | 0 | 0 | 0 | 0 | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 33 | 88008-1 | 10 | 1 | 1 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 34 | 0 | 10 | 1 | 1 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 35 | 88008-1 | 0 | 1 | 1 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 36 | 0 | 0 | 1 | 1 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 37 | 88008-1 | 10 | 0 | 1 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 30/10/2025 | inmediata | 0 |
| 38 | 0 | 10 | 0 | 1 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 39 | 88008-1 | 0 | 0 | 1 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 40 | 0 | 0 | 0 | 1 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 41 | 88008-1 | 10 | 1 | 0 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 42 | 0 | 10 | 1 | 0 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 43 | 88008-1 | 0 | 1 | 0 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 30/10/2025 | inmediata | 0 |
| 44 | 0 | 0 | 1 | 0 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 45 | 88008-1 | 10 | 0 | 0 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 30/10/2025 | inmediata | 0 |
| 46 | 0 | 10 | 0 | 0 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 47 | 88008-1 | 0 | 0 | 0 | Boleta de venta electrónica | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 48 | 0 | 0 | 0 | 0 | Boleta de venta electrónica | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 49 | 88008-1 | 10 | 1 | 1 | 0 | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 50 | 0 | 10 | 1 | 1 | 0 | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 51 | 88008-1 | 0 | 1 | 1 | 0 | 0 | 20172356720 | Ninguno | 30/10/2025 | inmediata | 0 |
| 52 | 0 | 0 | 1 | 1 | 0 | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 53 | 88008-1 | 10 | 0 | 1 | 0 | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 54 | 0 | 10 | 0 | 1 | 0 | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 55 | 88008-1 | 0 | 0 | 1 | 0 | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 56 | 0 | 0 | 0 | 1 | 0 | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 57 | 88008-1 | 10 | 1 | 0 | 0 | 0 | 20172356720 | Ninguno | 30/10/2025 | inmediata | 0 |
| 58 | 0 | 10 | 1 | 0 | 0 | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 59 | 88008-1 | 0 | 1 | 0 | 0 | 0 | 20172356720 | Ninguno | 30/10/2025 | inmediata | 0 |
| 60 | 0 | 0 | 1 | 0 | 0 | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 61 | 88008-1 | 10 | 0 | 0 | 0 | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 62 | 0 | 10 | 0 | 0 | 0 | 0 | 20172356720 | 0 | 0 | 0 | 0 |
| 63 | 88008-1 | 0 | 0 | 0 | 0 | 0 | 20172356720 | Ninguno | 0 | inmediata | 0 |
| 64 | 0 | 0 | 0 | 0 | 0 | 0 | 20172356720 | 0 | 30/10/2025 | 0 | 0 |
| 65 | 88008-1 | 10 | 1 | 1 | Boleta de venta electrónica | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 66 | 0 | 10 | 1 | 1 | Boleta de venta electrónica | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 67 | 88008-1 | 0 | 1 | 1 | Boleta de venta electrónica | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 68 | 0 | 0 | 1 | 1 | Boleta de venta electrónica | 0 | 0 | 0 | 0 | 0 | 0 |
| 69 | 88008-1 | 10 | 0 | 1 | Boleta de venta electrónica | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 70 | 0 | 10 | 0 | 1 | Boleta de venta electrónica | 0 | 0 | 0 | 0 | 0 | 0 |
| 71 | 88008-1 | 0 | 0 | 1 | Boleta de venta electrónica | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 72 | 0 | 0 | 0 | 1 | Boleta de venta electrónica | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 73 | 88008-1 | 10 | 1 | 0 | Boleta de venta electrónica | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 74 | 0 | 10 | 1 | 0 | Boleta de venta electrónica | 0 | 0 | 0 | 0 | 0 | 0 |
| 75 | 88008-1 | 0 | 1 | 0 | Boleta de venta electrónica | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 76 | 0 | 0 | 1 | 0 | Boleta de venta electrónica | 0 | 0 | 0 | 0 | 0 | 0 |
| 77 | 88008-1 | 10 | 0 | 0 | Boleta de venta electrónica | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 78 | 0 | 10 | 0 | 0 | Boleta de venta electrónica | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 79 | 88008-1 | 0 | 0 | 0 | Boleta de venta electrónica | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 80 | 0 | 0 | 0 | 0 | Boleta de venta electrónica | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 81 | 88008-1 | 10 | 1 | 1 | 0 | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 82 | 0 | 10 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 83 | 88008-1 | 0 | 1 | 1 | 0 | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 84 | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 85 | 88008-1 | 10 | 0 | 1 | 0 | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 86 | 0 | 10 | 0 | 1 | 0 | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 87 | 88008-1 | 0 | 0 | 1 | 0 | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 88 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 89 | 88008-1 | 10 | 1 | 0 | 0 | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 90 | 0 | 10 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 91 | 88008-1 | 0 | 1 | 0 | 0 | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 92 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 93 | 88008-1 | 10 | 0 | 0 | 0 | 0 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 94 | 0 | 10 | 0 | 0 | 0 | 0 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 95 | 88008-1 | 0 | 0 | 0 | 0 | 0 | 0 | Ninguno | 0 | inmediata | 0 |
| 96 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 97 | 88008-1 | 10 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 98 | 0 | 10 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 99 | 88008-1 | 0 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 100 | 0 | 0 | 1 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 101 | 88008-1 | 10 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 102 | 0 | 10 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 103 | 88008-1 | 0 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 104 | 0 | 0 | 0 | 1 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 105 | 88008-1 | 10 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 106 | 0 | 10 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 107 | 88008-1 | 0 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 108 | 0 | 0 | 1 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 109 | 88008-1 | 10 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 110 | 0 | 10 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 111 | 88008-1 | 0 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 112 | 0 | 0 | 0 | 0 | Boleta de venta electrónica | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 113 | 88008-1 | 10 | 1 | 1 | 0 | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 114 | 0 | 10 | 1 | 1 | 0 | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |
| 115 | 88008-1 | 0 | 1 | 1 | 0 | 76018810 | 0 | Ninguno | 30/10/2025 | inmediata | 0 |
| 116 | 0 | 0 | 1 | 1 | 0 | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 117 | 88008-1 | 10 | 0 | 1 | 0 | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 118 | 0 | 10 | 0 | 1 | 0 | 76018810 | 0 | 0 | 0 | 0 | 0 |
| 119 | 88008-1 | 0 | 0 | 1 | 0 | 76018810 | 0 | Ninguno | 0 | inmediata | 0 |
| 120 | 0 | 0 | 0 | 1 | 0 | 76018810 | 0 | 0 | 30/10/2025 | 0 | 0 |