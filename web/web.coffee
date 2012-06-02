###
mongoose = require('mongoose')
mongoose.connect('mongodb://heroku:cuber@staff.mongohq.com:10011/app4172676');

Schema = mongoose.Schema
ObjectId = Schema.ObjectId;

Cube = new Schema({
	id: { type: String, required: true, trim: true }
	name: { type: String, required: true, trim: true }
});

Cube = mongoose.model('Cube', Cube);

cube_data = {
    id: 'Patrick'
	name: 'Rubik'
};

cube1 = new Cube(cube_data);

cube1.save((error, data) ->
    if error
        console.log error
    else
        console.log data
)
###
port = process.env.PORT
web = require('zappa') port, ->
	Cuber = require('../cuber.coffee')
	translator = require('../translator.coffee')
	@use 'bodyParser'
	@get
		'/' : ->
			@response.contentType('application/json')
			cube = new Cuber.Cube '', false
			solver = new Cuber.Solver cube, true
			jeremy = require '../algorithms/jeremy/jeremy.coffee'
			solver.import_algorithms(jeremy)
			scrambled_cube = require('../scratch.coffee')
			cube.import(scrambled_cube)
			optimizer = require '../best_solve.coffee'
			solved = optimizer(cube)
			translator = require '../translator'
			machine_moves = translator(solved.colors, solved.perspective)
			
			response = {
				moves: machine_moves
			}
			
			json = JSON.stringify(response)
			
			@response.send(machine_moves)
		'/gui' : -> @render 'gui/index' : {layout: no}
		'/scrambled' : ->
			# @response.contentType('application/json')
			# cube = new Cuber.Cube
			# cube.scramble()
			# json = JSON.stringify(cube)
			# @response.send(json)
		'/new' : ->
			# @response.contentType('application/json')
			# cube = new Cuber.Cube
			# json = JSON.stringify(cube)
			# @response.send(json)
		'/solver' : ->
			# cube = new Cuber.Cube
			# solver = new Cuber.Solver cube
			# jeremy = require '../algorithms/jeremy/jeremy.coffee'
			# solver.import_algorithms(jeremy)
			# cube.scramble()
			# before = JSON.stringify(cube)
			# solver.go()
			# after = JSON.stringify(cube)
			# @response.send({before: before, after: after})
		
	@post
		'/' : (req, res) ->
			
		'/solve' : (req, res) -> 
			cube = new Cuber.Cube
			solver = new Cuber.Solver cube
			console.log req
			return cube.display()
		'/photo' : () ->
			console.log @request.body