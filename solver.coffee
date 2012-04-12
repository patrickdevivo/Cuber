_ = require './underscore.min.js'
_.str = require './underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

Cube = require './cuber.coffee'
cube = new Cube

algorithm = (turns, condition) ->
	if typeof turns == 'string'
		turns = _.chars(turns)
	
	if condition()
		_.each(turns, (turn, index)->
			cube.turn(turn)
		)

	return condition()
	
### Sample algorithm
--> algorithm(turns, condition)
--> turns => string of turns to execute if condition is true
--> condition => function which returns boolean. If true, turns are executed. If false, nothing happens.
###

algorithm('wGroW', ()->
	return 5+5 == 10
)