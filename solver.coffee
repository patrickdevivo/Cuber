Cuber = require './cuber.coffee'
cube = new Cuber.Cube '', false
solver = new Cuber.Solver cube, true
Table = require 'cli-table'

# jeremy = require './algorithms/jeremy/jeremy.coffee'
jeremy = require './algorithms/jeremy/color/jeremy.coffee'
solver.import_algorithms(jeremy)


# cube.interface()

###
cube.scramble(25)
cube.display()
console.log cube.history.scramble
solver.go()
console.log cube.history.algorithm
###


cube.scramble(25)
cube.display()
solver.go()

cube.display()