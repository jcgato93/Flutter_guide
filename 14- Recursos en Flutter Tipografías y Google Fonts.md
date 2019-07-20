# Recursos en Flutter: Tipografías y Google Fonts

Cuando hablamos de Tipografías nos referimos precisamente al tipo y estilo de letras que usaremos en los textos de nuestra interfaz, esta característica estará determinada por las indicaciones que nos haya suministrado nuestro equipo de diseño.

Un sitio web muy utilizado e interesante para obtener tipografías que puedes usar en tus proyectos es Google Fonts.

Para incorporar las tipografías personalizadas a nuestro proyecto crearemos una carpeta particular llamada fonts/ en la que guardaremos los archivos que descarguemos desde Google Fonts. Seguidamente, debemos declarar este recurso en el archivo pubspecs.yaml. Este archivo contiene las especificaciones de todos los recursos públicos que estarán disponibles para ser usados en nuestro proyecto. La sintaxis yaml está inspirada en json y xml y se usa en Flutter para definir la estructura de recursos y configuraciones globales de nuestra aplicación.

La forma de declarar los recursos de tipografía que usaremos en nuestro proyecto es la siguiente:

```yml
 fonts:
     - family: Schyler
       fonts:
         - asset: fonts/Schyler-Regular.ttf
         - asset: fonts/Schyler-Italic.ttf
           style: italic
     - family: Trajan Pro
       fonts:
         - asset: fonts/TrajanPro.ttf
         - asset: fonts/TrajanPro_Bold.ttf
           weight: 700
```

Algo que se debe tener en cuenta es que yaml es bastante estricto con la indentación de los datos. En otras palabras, la sangría, tabulación o espaciado de cada línea debe estar indicada correctamente para que no haya problemas con la lectura y procesamiento posterior de las configuraciones.

Para aplicar la nueva tipografía a nuestro código bastará con incluir en el widget TextStyle, la propiedad fontFamily e indicar en ella el nombre de la fuente que hemos declarado en nuestro archivo de configuración.

Para utilizar la funte desde codigo es de la siguiente manera 
con la propiedad fontFamily:

```javascript
style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        )
```
