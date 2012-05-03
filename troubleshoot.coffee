Cuber = require './cuber.coffee'
# cube = new Cuber.Cube
# solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

jeremy = require './algorithms/jeremy.coffee'

n = 1000
_.times(n, ()->
	cube = new Cuber.Cube 'Test Cube', false
	solver = new Cuber.Solver cube
	solver.import_algorithms(jeremy)
	cube.scramble()
	solver.go()
	# increment stuff
	if !cube.check()
		console.log cube.history.scramble
		cube.display()
)

cube.scramble(25)
cube.display()
solver.import_algorithms(jeremy)
solver.go()
cube.display()
###