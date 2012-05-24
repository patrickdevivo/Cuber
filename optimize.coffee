Cuber = require './cuber.coffee'
scrambled = new Cuber.Cube '', false
solver = new Cuber.Solver cube, true
persps = require './persps.coffee'
Table = require 'cli-table'

# jeremy = require './algorithms/jeremy/jeremy.coffee'
jeremy = require './algorithms/jeremy/jeremy.coffee'

scrambled.scramble(20)

turns = []
cubes = []
solvers = []
counts = []
i = 0
_.each(persps, (persp, index)->
	cubes[i] = new Cuber.Cube i, false
	solvers[i] = new Cuber.Solver cubes[i], true
	cubes[i].import(scrambled)
	cubes[i].change_perspective(persp.u, persp.l, persp.f)
	solvers[i].import_algorithms(jeremy)
	solvers[i].go()
	counts.push([cubes[i].history.algorithm.length, persp])
	counts.push(cubes[i].history.algorithm.length)
	i++
	turns.push([cubes[i].history.algorithm])
	
)


console.log counts
console.log _.min(counts)
console.log _.max(counts)
console.log turns.indexOf(_.min(counts))
console.log turns.indexOf(_.max(counts))