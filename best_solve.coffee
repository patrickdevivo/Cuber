Cuber = require './cuber.coffee'
Table = require 'cli-table'
persps = require './persps.coffee'
jeremy = require './algorithms/jeremy/jeremy.coffee'


optimal = (import_cube) ->
	cubes = []
	solvers = []
	counts = []
	i = 0
	solved = true
	shortest = 10000
	cube = new Cuber.Cube '', false
	scrambled = cube.scramble(25, true)
	_.each(persps, (persp, index)->
		cubes[i] = new Cuber.Cube i+'', false
		solvers[i] = new Cuber.Solver cubes[i], true
		solvers[i].import_algorithms(jeremy)
		# cubes[i].import_turns(scrambled)
		cubes[i].import(import_cube)
		# cubes[i].display()
		cubes[i].change_perspective(persp.u, persp.l, persp.f)
		solvers[i].go()
		if !cubes[i].check()
			solved = false
		counts.push({turns: cubes[i].history.algorithm.join(''), perspective: cubes[i].perspective})
		i++
	)
	
	turns = _.pluck(counts, 'turns') # array of all turn strings
	lengths = _.map(turns, (turn_set)-> return turn_set.length)
	min = _.min(lengths)
	
	min_index = 0
	_.each(counts, (solve, index)->
		if solve.turns.length <= min
			min_index = index
	)
	
	colors = ''
	_.each(_.chars(counts[min_index].turns), (persp_turn, index)->
		switch persp_turn
			when persp_turn.toLowerCase() then direction = 'cw'
			when persp_turn.toUpperCase() then direction = 'ccw'
		insert = counts[min_index].perspective[persp_turn.toLowerCase()]
		switch direction
			when 'cw' then insert = insert.toLowerCase()
			when 'ccw' then insert = insert.toUpperCase()
		colors += insert
	)
	
	return {solved: solved, turns: counts[min_index].turns, perspective: counts[min_index].perspective, colors: colors}
	
# foo = optimal()
# console.log foo.turns
# console.log foo.perspective
# console.log foo.colors

module.exports = optimal