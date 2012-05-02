Cuber = require './cuber.coffee'
# cube = new Cuber.Cube
# solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')

jeremy = require './algorithms/jeremy.coffee'
###
cube.scramble(25)
cube.display()
solver.import_algorithms(jeremy)
solver.go()
cube.display()
###

checks = 0
before = new Date().getTime()
i = 0
n = 10
total_turns = 0
_.times(n, ()->
	cube = new Cuber.Cube
	solver = new Cuber.Solver cube
	solver.import_algorithms(jeremy)
	cube.scramble()
	solver.go()
	if cube.check()
		checks++
	else
		cube.display()
	total_turns = total_turns + solver.turn_count
	i++
)
after = new Date().getTime()

console.log (checks/n)*100 + '%' # spit out accuracy
console.log (after-before)/1000 + ' seconds' # take time difference, convert to seconds
console.log  total_turns/n


mongoose = require('mongoose')
mongoose.connect('mongodb://heroku:cuber@staff.mongohq.com:10011/app4172676')

Schema = mongoose.Schema
ObjectId = Schema.ObjectId

Test = new Schema({
	id: { type: String, required: true, trim: true }
	result: { type: String, required: true, trim: true }
});

Test = mongoose.model('Test', Test)

test_data = {
    id: 'Brute Force Test'
	result: 'Accuracy: '+(checks/n)*100 + '%'+' running for '+(after-before)/1000+' seconds ('+n+' cubes attempted). Total turns: ' + total_turns + ', Average turns per cube: '+ total_turns/n +''
};

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