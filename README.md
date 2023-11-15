# Proyecto XQuery-XML-Consulta

Este proyecto es una aplicación web que utiliza XQuery para realizar consultas sobre documentos XML. Proporciona una interfaz simple para cargar archivos XML y ejecutar consultas XQuery para extraer información específica de los datos XML.

## Requisitos

Asegúrate de tener instalado lo siguiente antes de comenzar:

- Navegador web moderno
- [Servidor web](#configuración-del-servidor-web) (por ejemplo, Apache) para ejecutar XQuery

## Configuración del Servidor Web

1. Clona este repositorio en el directorio de tu servidor web:

   ```bash
   git clone https://github.com/tu-usuario/XQuery-XML-Consulta.git

2. Configura tu servidor web para que apunte al directorio del proyecto.
   
## Uso

1. Abre el navegador y navega a la URL donde está alojado el proyecto.

2. Carga un archivo XML haciendo clic en el botón "Cargar XML" y selecciona el archivo deseado.

3. Ingresa tu consulta XQuery en el campo de texto proporcionado.

4. Haz clic en el botón "Ejecutar Consulta" para ver los resultados.

## Ejemplo de Consulta XQuery
  ```xquery
  for $book in doc("books.xml")/library/book
  where $book/price < 20
  return $book/title

Este ejemplo selecciona los títulos de los libros cuyo precio es inferior a 20.

