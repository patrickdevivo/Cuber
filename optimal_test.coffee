before = new Date().getTime()
Cuber = require './cuber.coffee'
Table = require 'cli-table'
persps = require './persps.coffee'
async = require 'async'
jeremy = require './algorithms/jeremy/jeremy.coffee'


optimal = () ->
	cubes = []
	solvers = []
	counts = []
	i = 0
	solved = true
	cube = new Cuber.Cube '', false
	scrambled = cube.scramble(25, true)
	_.each(persps, (persp, index)->
		cubes[i] = new Cuber.Cube i+'', false
		solvers[i] = new Cuber.Solver cubes[i], true
		solvers[i].import_algorithms(jeremy)
		cubes[i].import_turns(scrambled)
		# cubes[i].display()
		cubes[i].change_perspective(persp.u, persp.l, persp.f)
		solvers[i].go()
		if !cubes[i].check()
			solved = false
		counts.push({turns: cubes[i].history.algorithm.join(''), perspective: persp})
		i++
	)
	
	turns = _.pluck(counts, 'turns') # array of all turn strings
	lengths = _.map(turns, (turn_set)-> return turn_set.length)
	min = _.min(lengths)
	max = _.max(lengths)
	
	return {min: min, max: max, solved: solved}
	
cubes_optimized = 0
checks = 0
table = new Table({
	head: ['cube', 'most turns to solve', 'least turns to solve', 'time optimizing', 'solved?']
})
execute = () ->
	data = optimal()
	if data.solved
		checks++
	cubes_optimized++
	time_elapsed = (new Date().getTime() - before)/1000
	# accuracy = (checks/cubes_optimized)*100
	accuracy = data.solved
	table.push([cubes_optimized, data.max, data.min, time_elapsed/cubes_optimized + ' (s)', accuracy])
	console.log('\u001B[2J\u001B[0;0f') # clear screen
	console.log table.toString() # write table
	_.defer(execute())
	
execute()