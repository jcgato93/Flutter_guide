# Creación y composición de un proyecto de Flutter

## Creación

- Desde android estudio es simplemente escoger la opcion de nuevo proyecto de flutter

- Desde visual studio con el comando Crtl + Shift + P    y luego escoger la opcion de flutter new project , luego este solicita el nombre del proyecto y por ultimo la ubicación.


## Composición de un proyecto en Flutter

- flutter_app/ : carpeta raíz del proyecto, donde además crearemos entre otras cosas las carpetas donde guardaremos nuestros recursos o assets de la aplicación.
android/ : aquí se almacenarán todos los archivos que corresponden a un proyecto Android. Es en esta ubicación donde se encontrarán los archivos de configuración y demás recursos que pudiéramos querer retocar o modificar en Android Studio para comportamientos particulares de la app en esta plataforma, como el FlutterActivity o el AndroidManifest.

- ios/ : similarmente, aquí se almacenarán todos los archivos que corresponden al sistema operativo iOS. Es en esta ubicación donde se encontrarán los archivos de configuración y otros que pudiéramos querer retocar o ajustar en XCode para comportamientos específicos relacionados con esta plataforma, como el FlutterAppDelegate o el info.plist, entre otros.

- lib/ : es aquí donde encontramos todos los archivos que corresponden a nuestro proyecto con Dart y donde vive la aplicación Flutter. Todos los archivos que estaremos generando durante el curso se almacenarán en esta carpeta.


Hay un archivo especial llamado pubspec.yaml donde se guardan las configuraciones del proyecto. Este archivo está escrito en el lenguaje YAML, que es un formato de serialización de datos legible por humanos inspirado en XML. En este archivo tendremos que declarar todos los recursos externos o assets que vamos a utilizar en nuestro proyecto como: fuentes de letras, imágenes, etc.