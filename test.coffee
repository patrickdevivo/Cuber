Cuber = require './cuber.coffee'
cube = new Cuber.Cube
solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')


algorithms = [
	[
		(cube)-> 
			return cube.fetch('wg').w == 'w' and cube.fetch('wg').g == 'g'
		'rrrrr'
	]
]

solver.import_algorithms(algorithms)
solver.go()