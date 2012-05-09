before = new Date().getTime()
Cuber = require './cuber.coffee'
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

db = require('monk')('mongodb://heroku:cuber@staff.mongohq.com:10011/app4172676')
tests = db.get('tests')
id = ''

tests.insert({total_cubes: 0, average_turns: 0, time_elapsed: 0, accuracy: 0}, (err, doc)->
	id = doc._id
	execute()
)

jeremy = require './algorithms/jeremy/jeremy.coffee'
checks = 0
n = 0
turns = 0
execute = ()->
	cube = new Cuber.Cube n+'', false
	solver = new Cuber.Solver cube
	solver.import_algorithms(jeremy)
	cube.scramble()
	solver.go()
	# increment stuff
	if cube.check()
		checks++
	n++
	turns = turns + _.size(cube.history.algorithm)
	#
	time_elapsed = (new Date().getTime() - before)/1000
	data = {
		total_cubes: n
		average_turns: turns/n
		time_elapsed: time_elapsed
		time_per_cube: time_elapsed/n
		accuracy: (checks/n)*100
	}
	tests.updateById(id, data, (err, doc)->
		execute()
	)