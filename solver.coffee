Cuber = require './cuber.coffee'
cube = new Cuber.Cube '', false
solver = new Cuber.Solver cube, true
Table = require 'cli-table'

# jeremy = require './algorithms/jeremy/jeremy.coffee'
jeremy = require './algorithms/jeremy/jeremy.coffee'
solver.import_algorithms(jeremy)


cube.scramble()
cube.display()
console.log cube.id
test = new Cuber.Cube '', false

cube.import(test)

cube.display()
console.log cube.id

cube.reset()

cube.display()