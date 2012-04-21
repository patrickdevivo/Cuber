port = process.env.PORT
web = require('zappa') port, ->
	Cuber = require('../cuber.coffee')
	@use 'bodyParser'
	@get
		'/' : -> @render index: {layout: no}
		'/gui' : -> @render 'gui/index' : {layout: no}
		'/scrambled' : ->
			@response.contentType('application/json')
			cube = new Cuber.Cube
			cube.scramble()
			json = JSON.stringify(cube)
			@response.send(json)
		'/new' : ->
			@response.contentType('application/json')
			cube = new Cuber.Cube
			json = JSON.stringify(cube)
			@response.send(json)
		
	@post
		'/solve' : (req, res) -> 
			cube = new Cuber.Cube
			solver = new Cuber.Solver cube
			console.log req
			return cube.display()
		'/photo' : () ->
			console.log @request.body