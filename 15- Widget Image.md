# Widget Image

Similar a la manera en que declaramos e incorporamos los recursos de tipografía, las imágenes al ser también recursos externos, deberán ser guardadas en un directorio particular que llamaremos assets/ y declaradas en el archivo pubspecs.yaml de la siguiente manera:

```javascript
assets:
  - images/a_dot_burr.jpeg
  - images/a_dot_ham.jpeg
```

Una vez declarado el recurso de imagen en el archivo de configuraciones, lo incorporamos al código mediante el widget AssetImage( “[ubicación del asset]” ) que a su vez colocaremos como valor de la propiedad image de un widget DecorationImage, o de cualquier otro widget que disponga de la propiedad image, como es el caso del BoxDecoration.