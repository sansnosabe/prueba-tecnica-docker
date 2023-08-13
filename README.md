# rubiko-basic-docker

Este repositorio contiene un servidor web básico Node.js que responde a peticiones GET en la ruta /health con un estado 200 y el mensaje "OK". También
incluye un archivo Dockerfile para construir una imagen Docker y un archivo docker-compose.yml para orquestar múltiples servicios Docker.

## Contenido del repositorio

- `app/index.js`: Código del servidor web que responde a peticiones GET en la ruta /health.
- `app/package.json`: Archivo de configuración de dependencias del proyecto.
- `Dockerfile`: Archivo para construir la imagen Docker del servidor web Node.js.
- `docker-compose.yml`: Archivo de configuración de Docker Compose para definir múltiples servicios Docker.

## Cómo lanzar un contenedor con Docker

1. Clona el proyecto:

   - git clone git@github.com:sansnosabe/prueba-tecnica-docker.git

2. Abre el terminal y navega al directorio del repositorio:

   - cd prueba-tecnica-docker

3. Construye la imagen del contenedor:

   - docker build -t rubiko-basic-docker .

4. Ejecuta el contenedor y mapea el puerto 5050 del host al puerto 5000 del contenedor:

   - docker run -p 5050:5000 rubiko-basic-docker

5. Abre el navegador y verifica que el servidor responde correctamente:

   - http://localhost:5050/health

6. (EXTRA) Para ejecutar el contenedor pasando una variable de entorno ejecuta el siguiente comando:

   - docker run -p 5050:5000 -e GREETINGS="Hello Rubiko Tech!" rubiko-basic-docker

## Cómo lanzar el Docker Compose

1. Abre el terminal y navega al directorio del repositorio:

   - cd prueba-tecnica-docker

2. Ejecuta el comando para iniciar los servicios:

   - docker-compose up

3. Mira que los logs del terminal se estén ejecutando sin errores y en otra terminal ejecuta el siguiente comando para realizar una llamada curl:

   - curl http://localhost:5050/health
