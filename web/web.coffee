port = process.env.PORT
console.log typeof port
web = require('zappa') port, ->
	Cuber = require('../cuber.coffee')
	@use 'bodyParser'
	@get
		'/' : -> @render index: {layout: no}
		'/gui' : -> @render 'gui/index' : {layout: no}
		'/scrambled' : -> 
			cube = new Cuber.Cube
			cube.scramble()
			return JSON.stringify(cube)
		'/new' : ->
			cube = new Cuber.Cube
			return JSON.stringify(cube)
		
	@post
		'/solve' : (req, res) -> 
			cube = new Cuber.Cube
			solver = new Cuber.Solver cube
			console.log req
			return cube.display()