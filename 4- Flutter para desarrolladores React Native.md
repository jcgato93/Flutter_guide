# Flutter para desarrolladores React Native

Si desarrollas aplicaciones con React Native ya habrás notado que hacerlo con Flutter es muy similar pues utiliza el mismo estilo reactivo.

La principal diferencia es que mientras que React Native transpila (traduce) el código a Widgets Nativos para cada plataforma, Flutter compila todo directamente a Nativo controlando cada pixel de la pantalla para evitar problemas de rendimiento causados por el bridge de JavaScript.

Ahora que estás interesado en aprender Flutter voy a darte un breve recorrido entre lo que maneja React Native y lo que encontrarás en Flutter.

El punto de entrada de una aplicación en React Native está definido por ti a partir de una función

```javascript
// JavaScript

function startHere() {

  // Can be used as entry point
}
```


Flutter maneja un punto de entrada ya definido que es la función main
```javascript
// Dart

main() {

}
```
Más allá de esto, verás que la manera de funcionar de cada uno es muy similar.
A continuación te presento cómo sería un Hola Mundo con React Native vs. Flutter:

```javascript
// React Native
import React from "react";
import { StyleSheet, Text, View } from "react-native";

export default class App extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Text>Hello world!</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center"
  }
});
```

```javascript
// Flutter
import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
```

Verás que la verbosidad entre códigos es más reducida en Flutter y esto es gracias al lenguaje de programación Dart y en general la mejora que se está proponiendo con este SDK.
