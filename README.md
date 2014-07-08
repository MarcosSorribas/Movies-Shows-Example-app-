#README
===
Aplicacion de prueba para asentar diferentes conceptos como el uso de librerias como Mantle, AFNetworking y SDWebImage y varios patrones de diseño como `strategy` con el fin de mostrar diferentes UITableViewCell custom en la app y `facade` para sincronizar y descargar todos los recursos de la red. 

Se ha usado como fuente de peliculas y series la API gratuita de trakt.tv (mas abajo en recursos). `Si quereis ejecutar este codigo NECESITAREIS registraros para obtener vuestra clave privada`. Seguir las instrucciones de abajo para hacerlo funcionar. 


##Importante para que funcione.
___
1. Para funcionar necesitamos una clave privada que nos de acceso al API. Ir a [trakt.tv](http://trakt.tv/) registraros y en Settings>API. Copiarla al portapapeles. 
2. Una vez que teneis vuestra API os descargais este proyecto de xcode y lo abris.  



##Recursos:
___
* [trakt.tv](http://trakt.tv/) - API publica gratuita con datos sobre las peliculas/series
* **AFNetworking** - Framework para manejar las peticiones a la API. (Instalado desde CocoaPods)
* **Mantle** - Framework para parsear los JSON que nos devuelve la API. (Instalado desde CocoaPods)
* **SDWebImage** - Framewokr para descagar las imagenes de cada serie/pelicula y cachearlas en local. (Instalado desde CocoaPods). 
