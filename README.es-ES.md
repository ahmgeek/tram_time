

# Hora del Tranvía
Este es un pequeño servidor en Ruby para contar el tiempo restante hasta la llegada del tranvía para mí.
Está conectado a Alexa a través de una habilidad personalizada.

# Ejecución
`docker build tram_time:dev .`

`docker run -d -p 80:3000 tram_time:dev`

`curl -X POST http://localhost`

## Tareas pendientes
 - [ ] Escribir especificaciones (specs).
 - [ ] Agregar configuración de nginx
 - [ ] Agregar más información a la respuesta devuelta.
 - [ ] Agregar ranuras/ubicaciones como configuración.
 - [ ] Agregar el modelo JSON de Alexa.

## Epílogo
Es posible que no trabaje en ninguna de las tareas anteriores, el código funciona de forma impresionante, Alexa me dice lo que necesito cada mañana,
y eso es súper genial. Quería agregar más funciones y hacer que esto funcione para todos, pero no tengo tiempo...
de todas formas, puedes contactarme para cualquier pregunta 😘
