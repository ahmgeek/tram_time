# Tram Time
this is a tiny ruby server, to count down the tram arrival time for me.
It's connected to Alexa via personal skill.

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

## Epilogue
I may not work on any of the above tasks at all, the code works blazningly amazing, alexa tells me what I want every morning,
and that's super cool. I wanted to add more features and make this works for everyone there, but I don't have time...
you can reach me however for any questions 😘
