Cuber = require './cuber.coffee'
# cube = new Cuber.Cube '', false
# solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

jeremy = require './algorithms/jeremy.coffee'

execute = ()->
	cube = new Cuber.Cube 'Test Cube', false
	solver = new Cuber.Solver cube
	solver.import_algorithms(jeremy)
	cube.scramble(25)
	scramble = cube
	solver.go()
	# increment stuff
	if cube.check()
		execute()
	else
		console.log cube.history.scramble
		scramble.display()
		zipped = ''
		_.each(solver.turns_executed, (turn) => zipped = zipped + turn )
		console.log zipped
		cube.display()
		
execute()
	

###
cube.scramble(25)
cube.display()
solver.import_algorithms(jeremy)
solver.go()
cube.display()