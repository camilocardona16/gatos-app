# Catbreeds

Aplicacion movil para ingreso a PRAGMA

# 📦 Documentación de librerías

[![get](https://pub.dev/packages/get)](https://pub.dev/packages/get)
[![dio](https://pub.dev/packages/dio)](https://pub.dev/packages/dio)
[![flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)](https://pub.dev/packages/flutter_launcher_icons)

# 📁 Arquitectura de los módulos

Se define la arquitecura clean arquitecture.

LIB # carpeta raiz
---- APP # carpeta de la aplicacion
-------- MODULO-NAME # nombre del modulo
-------------------- DATA # se alojan los datos y llamados a apis
-------------------- DOMAIN # se encuentra la logica de negocio
-------------------- PRESENTATION # se encuentra la visual y controladores de la visual
---- CORE # carpeta donde se encuentra lo escencia de la aplicacion
---- ROUTER # carpeta donde se encuentra la navegacion de la aplicacion
---- WIDGETS # carpeta donde se encuentran los widgets globales de la aplicacion

# 📁 Compilacion de iconos:

para compilar los iconos de la aplicacion se uso la libreria flutter_launcher_icons donde nos especifica agregar en el pubspec unas lineas que
indican donde se encuentra la imagen y a que dispositivos queremos compilar, el comando para compilar los iconos es:

- flutter pub run flutter_launcher_icons:main

# 📁 A tener en cuenta:

1. No se realizo conexion con firebases para auutenticar la app y poderla compilar para distribucion.
2. Se agrego un shortcut para compilar de manera directa desde el runner de visual studio (Ctrl+Mayus+D -> inicar depuracion )\
3. se agrego un loading en el detalle mientras carga la data, (no lo puse en la lista para ambitos didacticos)
4. En lso environments se agrego la url destino la cuale s llamada donde se requiere.
5. por medio de un api provider inyecto el token para todas las peticiones.
6. por medio de un interceptor atrapo todos los errores en las peticiones.
7. la aplicacion esta orientada a api 33, actualmente adroid solicita api lvl 34 para subir a tiendas
   (lo deje asi para ambitos didacticos).
8. La aplicacion no tiene warnings
9. cada peticion tiene sus modelos para garatizar un lenguaje fuertemente tipado.
10. Toda opinion de mejora es bienvenida, estoy para aprender y que aprendan de mi!

11. GRACIAS POR EL TIEMPO :D

ANDRES CAMILO CARDONA
Frontend developer.
