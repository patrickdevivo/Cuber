repl = require "repl"
Cuber = require './cuber.coffee'
cube = new Cuber.Cube '', false
solver = new Cuber.Solver cube

jeremy = require './algorithms/jeremy/color/jeremy.coffee'
solver.import_algorithms(jeremy)

console.log('\u001B[2J\u001B[0;0f') # clear screen


debug = repl.start("Cuber Debug> ")

debug.context.Cuber = Cuber
debug.context.cube = cube
debug.context.solver = solver