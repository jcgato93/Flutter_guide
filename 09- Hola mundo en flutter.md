# Hola mundo en flutter

- Por defecto cada que se crea un proyecto en flutter este construye una especie 
de hola mundo , una simple aplicacion que lleva la cuenta de pulsaciones a un botton.

En la propiedad home será donde anidaremos los widgets relacionados con el scaffold de nuestra aplicación.

el scaffold contiene la estructura base para una aplicación en Material Design.
La composición básica del scaffold para nuestro Hola Mundo será la siguiente:

```javascript
...
MaterialApp (
  ...
  home: Scaffold (
    appBar: AppBar(
      title: Text('Hola Mundo')
    ),
    body: Center(
      child: Text('HolaMundo')
    ),
  )
)

```

Además del appBar y el body, un scaffold estándar también puede incluir un bottomNavigationVar y un floatingActionButton, entre otros widgets.

Es importante tener en cuenta que un error común al definir la estructura de widgets para nuestra aplicación es olvidar colocar el widget correspondiente al Scaffold(). Esto se hace más evidente cuando al previsualizar nuestra app, vemos que los widgets de tipo Text() aparecen con unas rayas amarillas en la parte inferior.

En Flutter, al hacer cambios en el código y guardar el archivo, se actualiza automáticamente la interfaz del emulador, compilando solo la zona modificada, lo que nos permite ver los cambios reflejados casi de manera instantánea.