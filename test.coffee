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
			return cube.get('wg', false).w == 'w'
		'rrrrr'
	]
]

solver.import_algorithms(algorithms)
solver.go()