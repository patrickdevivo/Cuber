Cuber = require './cuber.coffee'
cube = new Cuber.Cube '', false
solver = new Cuber.Solver cube, true
Table = require 'cli-table'

# jeremy = require './algorithms/jeremy/jeremy.coffee'
jeremy = require './algorithms/jeremy/jeremy.coffee'
solver.import_algorithms(jeremy)


i = 0
cubes = []
solvers = []
counts = []

cubes[0] = new Cuber.Cube '', false
cubes[1] = new Cuber.Cube '', false

cubes[0].import_turns('wRbGryWgB')
cubes[1].import_turns('wRbGryWgB')

cubes[0].display()
cubes[1].display()

console.log cubes[0].id
console.log cubes[1].id

solvers[0] = new Cuber.Solver cubes[0], true
solvers[1] = new Cuber.Solver cubes[1], true

solvers[0].import_algorithms(jeremy)
solvers[1].import_algorithms(jeremy)

cubes[1].change_perspective('b', 'r', 'y')
solvers[0].go()
solvers[1].go()

console.log cubes[0].history.algorithm.length
console.log cubes[1].history.algorithm.length

###
_.times(23, ()->
	cubes[i] = _.clone(cube)
	solvers[i] = new Cuber.Solver cubes[i], true
	jeremy = require './algorithms/jeremy/jeremy.coffee'
	solver.import_algorithms(jeremy)
	
	# cubes[i].display()
	
	switch i
		when 0
			cubes[i].change_perspective('w', 'g', 'r')
			solvers[i].import_algorithms(jeremy)
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 1
			cubes[i].change_perspective('w', 'r', 'b')
			solvers[i].import_algorithms(jeremy)
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 2
			cubes[i].change_perspective('w', 'b', 'o')
			solvers[i].import_algorithms(jeremy)
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 3
			cubes[i].change_perspective('w', 'o', 'g')
			solvers[i].import_algorithms(jeremy)
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 4
			cubes[i].change_perspective('g', 'w', 'o')
			solvers[i].import_algorithms(jeremy)
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 5
			cubes[i].change_perspective('g', 'o', 'y')
			solvers[i].import_algorithms(jeremy)
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 6
			cubes[i].change_perspective('g', 'y', 'r')		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 7
			cubes[i].change_perspective('g', 'r', 'w')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 8
			cubes[i].change_perspective('r', 'w', 'g')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 9
			cubes[i].change_perspective('r', 'g', 'y')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 10
			cubes[i].change_perspective('r', 'y', 'b')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 11
			cubes[i].change_perspective('r', 'b', 'w')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 12
			cubes[i].change_perspective('b', 'w', 'r')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 13
			cubes[i].change_perspective('b', 'r', 'y')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 14
			cubes[i].change_perspective('b', 'y', 'o')
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 15
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 16
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 17
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 18
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 19

			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 20
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 21
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 22
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 23
			
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
		when 24
		
			solvers[i].go()
			counts.push(cubes[i].history.algorithm.length)
	i++
)

console.log counts