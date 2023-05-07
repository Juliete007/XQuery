<table>
  <tr>
    <td>ID Factura</td>
    <td>ID Cliente</td>
    <td>Fecha</td>
    <td>Total</td>
  </tr>
  {
for $f in doc("facturas")//factura
order by ($f/fecha) descending
return
  <tr>
    <td>
      {data($f/@id)}
    </td>
    <td>
      {data($f/cliente)}
    </td>
    <td>
      {data($f/fecha)}
    </td>
    <td>
      {data($f/total)}
    </td>
  </tr>
  }
</table>