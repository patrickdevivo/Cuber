Cuber = require './cuber.coffee'
cube = new Cuber.Cube
solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

jeremy = require './algorithms/jeremy.coffee'

cube.scramble(25)
cube.display()
solver.import_algorithms(jeremy)
solver.go()
cube.display()
###