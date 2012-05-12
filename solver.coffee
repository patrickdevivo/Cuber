Cuber = require './cuber.coffee'
cube = new Cuber.Cube '', false
solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')
Table = require 'cli-table'

jeremy = require './algorithms/jeremy/jeremy.coffee'
solver.import_algorithms(jeremy)


cube.interface()