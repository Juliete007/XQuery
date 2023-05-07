<table>
  <tr>
    <td>ID Cliente</td>
    <td>Nombre y Apellidos</td>
    <td>Ciudad</td>
    <td>País</td>
  </tr>
  {
for $c in doc("clientes")//cliente
order by xs:integer($c/@id) ascending
return
  <tr>
    <td>
      {data($c/@id)}
    </td>
    <td>
      {data($c/name)}
    </td>
    <td>
      {data($c/address/city)}
    </td>
    <td>
      {data($c/address/country)}
    </td>
  </tr>
}
</table>