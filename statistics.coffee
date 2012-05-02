before = new Date().getTime()
Cuber = require './cuber.coffee'
# cube = new Cuber.Cube
# solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

mongoose = require('mongoose')
mongoose.connect('mongodb://heroku:cuber@staff.mongohq.com:10011/app4172676')
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

Stat = new Schema({
	start_time: {type: Number}
	total_cubes: {type: Number}
	average_turns: {type: Number}
	time_elapsed: {type: Number}
	accuracy: {type: Number}
});
Stat = mongoose.model('Statistics', Stat)
first = new Stat({start_time: before, total_cubes: 0, average_turns: 0, time_elapsed: 0})
first.save()
id = first._id

jeremy = require './algorithms/jeremy.coffee'
checks = 0
n = 0
turns = 0
funky_cubes = {}
execute = ()->
	cube = new Cuber.Cube
	solver = new Cuber.Solver cube
	solver.import_algorithms(jeremy)
	cube.scramble()
	solver.go()
	# increment stuff
	if cube.check()
		checks++
	n++
	turns = turns + solver.turn_count
	#
	
	data = {
		total_cubes: n
		average_turns: turns/n
		time_elapsed: (new Date().getTime() - before)/1000
		accuracy: (checks/n)*100
	}

	conditions = {_id: id}
	Stat.update(conditions, data, {upsert: true}, (err, num)-> execute() )
	
execute()

# mongoose.connection.close()