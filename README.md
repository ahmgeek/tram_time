# Tram Time, initial version
this is a tiny ruby server, to count down the tram arrival time for me.
It's connected to Alexa via a personal skill.

# Run
`docker build tram_time:dev .`

`docker run -d -p 80:3000 tram_time:dev`

`curl -X POST http://localhost`


## TODOs

 - [ ] Write specs.
 - [ ] Add nginx conf
 - [ ] Add more info to the returned response.
 - [ ] Add slots/locations as a setup.
 - [ ] Add the Alexa json model.
