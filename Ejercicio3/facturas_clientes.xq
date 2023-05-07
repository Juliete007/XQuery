<table>
  <tr>
    <td>ID Cliente</td>
    <td>Número de Facturas</td>
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
  </tr>
  }
</table>