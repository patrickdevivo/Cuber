fs = require 'fs'

{print} = require 'util'
{spawn} = require 'child_process'

compile = (callback) ->
	coffee = spawn 'coffee', ['-c', 'cuber.coffee']
	coffee.stderr.on 'data', (data) ->
		process.stderr.write data.toString()
	coffee.stdout.on 'data', (data) ->
		print data.toString()
	coffee.on 'exit', (code) ->
		callback?() if code is 0

task 'compile', 'Compile the CoffeeScript to JavaScript', ->
	compile()