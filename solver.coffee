Cuber = require './cuber.coffee'
cube = new Cuber.Cube
solver = new Cuber.Solver cube

solver.run_algorithm('wb', ()-> # adds algorithm to solver queue
	return 5+5 == 10
)