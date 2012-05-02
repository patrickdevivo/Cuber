before = new Date().getTime()
Cuber = require './cuber.coffee'
# cube = new Cuber.Cube
# solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

mongoose = require('mongoose')
mongoose.connect('mongodb://heroku:cuber@staff.mongohq.com:10011/app4172676')
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

Stat = new Schema({
	start_time: {type: Date, required: true}
	total_cubes: {type: Number}
	average_turns: {type: Number}
	time_elapsed: {type: Date}
});
Stat = mongoose.model('Stat Sequence', Stat)
first = new Stat({start_time: before})
first.save()

jeremy = require './algorithms/jeremy.coffee'

checks = 0
n = 0
turns = 0;
execute = ()->
	cube = new Cuber.Cube
	solver = new Cuber.Solver cube
	solver.import_algorithms(jeremy)
	cube.scramble()
	solver.go()
	if cube.check()
		checks++

	# increment stuff
	n++
	turns = turns + solver.turn_count
	#
	
	data = {
		total_cubes: n
		average_turns: turns/n
		time_elapsed: new Date().getTime() - before
	}
	
	conditions = {start_time: before}
	update = {}
	first.update(conditions, update)
	execute()
	
execute()
	

# console.log (checks/n)*100 + '%' # spit out accuracy
# console.log (after-before)/1000 + ' seconds' # take time difference, convert to seconds
# console.log  total_turns/n


###

test = new Test(test_data)

test.save((error, data)->
    if error
        console.log error
    else
        console.log data
)

close = ()->
	mongoose.connection.close()

_.delay(close(), 1000)