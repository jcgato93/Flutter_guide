# Análisis de Interfaces de Usuario en Flutter

Analizar las interfaces de usuario para determinar la mejor forma de componer los diferentes grupos de elementos visuales o de interacción que conforman nuestra aplicación es una tarea común entre desarrolladores de aplicaciones móviles. De hecho la propia documentación oficial de Flutter lo recomienda.

El análisis consiste básicamente en identificar o detectar visualmente cuál sería la mejor forma de construir las diferentes secciones de nuestra interfaz, tomando en cuenta los widgets básicos de los cuales disponemos en Flutter. Prever la manera en que pueden ser anidados u organizados los diferentes widgets básicos, incluso determinar qué grupos de widgets pudieran pasar a ser nuevos widgets compuestos nos facilitará mucho el trabajo posterior ya cuando pasemos al código del programa.

Una técnica usada para representar el widget tree resultante del análisis de la interfaz es mediante un diagrama de árbol, en el que cada widget se representa con una símbolo circular en una estructura de dependencias o asociaciones derivadas desplegadas en forma de árbol descendente.


## Layout

Es basicamente la posicion de los elementos o de los widgets, flutter viene con algunos predeterminados como el Row , column , grids , listview, etc....