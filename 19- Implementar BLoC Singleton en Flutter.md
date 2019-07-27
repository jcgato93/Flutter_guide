# Implementar BLoC Singleton en Flutter

- Lo primero es añadir un paquete en la seccion de dependencias
en el archivo pubspec.yml

https://pub.dev/packages/generic_bloc_provider

```yml
    dependencies:
        generic_bloc_provider: ^1.0.9
```

- Ejemplo de implementacion 

```javascript
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: AppBloc(),
      child: MaterialApp(
        title: 'Yo Sleep',
        home: MainPage(),
        initialRoute: 'main',
        routes: {
          'main': (context) => MainPage(),
        },
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBloc = BlocProvider.of<AppBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(),
            RecordList(appBloc),
          ],
        ),
      ),
    );
  }
}
```