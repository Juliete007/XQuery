<table>
  <tr>
    <td>ID Cliente</td>
    <td>Nombre y Apellidos</td>
    <td>Ciudad</td>
    <td>Número de Facturas</td>
    <td>Facturación total</td>
    <td>Rentabilidad</td>
  </tr>
  {
for $c in doc("clientes")//cliente
let $facturas := doc("./../facturas.xml")/facturas/factura
let $total := doc("./../facturas.xml")/facturas/factura[cliente = $c/@id]/total
let $total_sin_euro := $total ! replace(., '€', '')
let $total_numeros := $total_sin_euro ! xs:double(.)
order by sum($total_numeros) div data(count($facturas[cliente = $c/@id])) descending
return
  <tr>
    <td>
      {data($c/@id)}
    </td>
    <td>
      {data($c/name)}
    </td>
    <td>
      {data($c/address/country)}
    </td>
    <td>
      {data(count($facturas[cliente = $c/@id]))}
    </td>
    <td>
      {sum($total_numeros)}
    </td>
    <td>
      {sum($total_numeros) div data(count($facturas[cliente = $c/@id]))}
    </td>
  </tr>
  }
</table>