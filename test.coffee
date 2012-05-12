before = new Date().getTime()
Cuber = require './cuber.coffee'
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')
Table = require 'cli-table'

db = require('monk')('mongodb://heroku:cuber@staff.mongohq.com:10011/app4172676')
tests = db.get('tests')
id = ''


# clear out older tests under 100 cubes
# tests.findAndModify({total_cubes: $lt: 100}, {remove: true}, (err, docs) =>
# 	console.log docs
# )


jeremy = require './algorithms/jeremy/jeremy.coffee'
checks = 0
n = 0
turns = 0
execute = ()->
	if n is 10
		tests.insert({total_cubes: 0, average_turns: 0, time_elapsed: 0, accuracy: 0}, (err, doc)->
			id = doc._id
		)
		
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
	
	table = new Table({
		head: ['cubes', 'avg turns/cube', 'time elapsed', 'accuracy']
	})
	table.push([data.total_cubes, Math.floor(data.average_turns), data.time_elapsed + ' (s)', data.accuracy + '%'])

	console.log('\u001B[2J\u001B[0;0f') # clear screen
	console.log table.toString()
	
	tests.updateById(id, data, (err, doc)->
		execute()
	)
execute()