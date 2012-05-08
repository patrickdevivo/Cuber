##Cuber.coffee
Model of a 3x3 Rubik's cube written in CoffeeScript

### Usage
**Require Cuber**: 
`Cuber = require './cuber.coffee'`


**Initialize a cube**: 
`cube = new Cube "Patrick\'s Rubik\'s Cube""`


**Display cube**: 
`cube.display()`


**Scramble cube**: 
`cube.scramble(100)` (100 random turns)


**Check if a cube is solver**: 
`cube.check()`

**Cheat**
`cube.cheat()` *reverses all previous moves to return to starting (solved) state*

**Turn a face**
`cube.white.cw()`
or
`cube.turn('white', 'cw)`
or
`cube.turn('w')` *lowercase means clockwise, uppercase means counter-clockwise*

**Solver**
`solver = new Solver cube`