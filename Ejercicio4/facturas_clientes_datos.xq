<table>
  <tr>
    <td>ID Cliente</td>
    <td>Número de Facturas</td>
    <td>Nombre y Apellidos</td>
    <td>Ciudad</td>
  </tr>
  {
for $c in doc("clientes")//cliente
let $facturas := doc("./../facturas.xml")/facturas/factura
order by xs:integer($c/@id) ascending
return
  <tr>
    <td>
      {data($c/@id)}
    </td>
    <td>
      {data(count($facturas[cliente = $c/@id]))}
    </td>
    <td>
      {data($c/name)}
    </td>
    <td>
      {data($c/address/country)}
    </td>
  </tr>
  }
</table>