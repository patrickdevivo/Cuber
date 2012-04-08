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