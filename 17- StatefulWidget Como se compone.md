# StatefulWidget: Cómo se compone?

Flutter maneja fundamentalmente dos clases de Widgets, los que heredan (o extienden) sus propiedades y comportamientos a partir de la clase StatelessWidget y los que heredan (o extienden) de la clase StatefulWidget. Comprender la diferencia entre estos dos tipos de Widgets será especialmente importante cuando vayamos a programar la lógica de nuestra aplicación.

Lo primero que debemos comprender es qué significan los términos Stateless y Stateful:

- Stateless: sin estado. (Que es inmutable. Que no cambia)

- Stateful: que posee estado. (Que puede cambiar)

El estado es un concepto propio de la programación funcional, y en términos muy generales se refiere al valor o situación de todo el conjunto de variables, métodos y funciones contenidas en una clase en un momento dado. Para ilustrarlo un poco, sería como una “fotografía” de todos los valores asociados a una clase. Lo peculiar de este concepto es que un estado puede ser mutable, que puede cambiar o ser cambiado en algún momento durante la ejecución de la aplicación, dependiendo de algún evento o variable externa; o, por otro lado, pudiera ser inmutable, que nunca cambia, o que sus valores no dependen de ningún elemento o evento externo o interacción con el usuario.

En síntesis, el State es un tipo de clase particular que almacena la situación, o el estado, de un Widget durante la ejecución de la aplicación y, como parte de su comportamiento, presta atención a los eventos o interacciones externas que le sucedan a éste y que puedan generar una modificación o alteración de sus propiedades, métodos o funciones. Como resultado, el State devuelve una nueva “fotografía”, con la nueva situación ya cambiada del Widget y este se vuelve a renderizar en la interfaz.


## Ejemplo: 

para que un widget sea capaz de responder a la interacción con el usuario y en función de esa interacción pueda cambiar su comportamiento o algunas de sus propiedades, este debe ser definido inicialmente como un StatefulWidget.

aprenderemos a construir, personalizar y darle comportamiento a un Floating Action Button, nuestro widget de tipo Statful, o con estado.

Este widget, también conocido como Fab, es muy común en las interfaces móviles basadas en Material Design y generalmente representan al elemento de principal interacción esperada en la interfaz, equivale a un Call to action.

La sintaxis básica de un Stateful Widget, es:

```javascript
import 'package:flutter/material.dart';

class <nombre del widget> extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return _<nombre del widget>();
  }
}

// Clase donde se manejaran los eventos del State
class _<nombre del widget> extends State<<nombre del widget>> {
  void <método de interacción>(){
    // TODO: interaction code
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return <nombre del widget>(
      
      ...       
      onPressed: <método de interaccion>,
      ...
    );
  }

}
```

## Ejemplo practico 

```javascript
import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}


class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  
  // Metodo que se ejecutara cuando se presione el boton
  void onPressedFav(){
  Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Add to Favorites"),
          )
        );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,// Asignar metodo
      child: Icon(
        Icons.favorite_border
      ),
    );
  }

}
```