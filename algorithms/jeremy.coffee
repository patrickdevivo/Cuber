algorithms = [
	[{ wg: {
		w: 'w'
		g: 'g'
	}}, '']
	[{ wg: {
		w: 'g'
		g: 'w'
	}}, 'grw']
	[{ wr: {
		w: 'w'
		r: 'g'
	}}, 'w']
]


# Cuber = require '../cuber.coffee'
# cube = new Cuber.Cube
# solver = new Cuber.Solver cube
# 
# cube.scramble()
# cube.display()
# 
# solver.import_algorithms(algorithms)
# 
# solver.go()

module.exports = algorithms