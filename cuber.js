(function() {
  var Cube, c, _und,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  _und = require("./underscore.min");

  _.each([1, 2, 3]);

  Cube = (function() {

    Cube.id = Math.random() * Math.random();

    function Cube(name) {
      this.name = name;
      this.display = __bind(this.display, this);
      this.turn = __bind(this.turn, this);
      this.initiate_faces = __bind(this.initiate_faces, this);
      this.initiate_faces(this);
    }

    Cube.prototype.initiate_faces = function() {
      var Face, cube;
      cube = this;
      Face = (function() {

        function Face(color, cube) {
          var short, sqs;
          this.color = color;
          this.cube = cube;
          short = color.toUpperCase().charAt(0);
          this.face = (function() {
            var _results;
            _results = [];
            for (sqs = 9; sqs >= 1; sqs--) {
              _results.push(short);
            }
            return _results;
          })();
        }

        Face.prototype.cw = function() {
          return this.cube.turn(this.color, 'cw');
        };

        Face.prototype.ccw = function() {
          return this.cube.turn(this.color, 'ccw');
        };

        return Face;

      })();
      this.white = new Face("White", cube);
      this.green = new Face("Green", cube);
      this.red = new Face("Red", cube);
      this.blue = new Face("Blue", cube);
      this.orange = new Face("Orange", cube);
      return this.yellow = new Face("Yellow", cube);
    };

    Cube.prototype.turn = function(color, direction) {
      var face, short;
      if (!color) console.log("Error: enter a color (white, green...)");
      if (!direction) consolore.log("Error: enter a direction (cw or ccw)");
      if (color && direction) {
        color = color.toLowerCase();
        short = color.toUpperCase().charAt(0);
        face = this[color].face;
        if (direction === "cw") console.log("Turn face " + face + " cw");
        if (direction === "ccw") return console.log("Turn face " + face + " ccw");
      }
    };

    Cube.prototype.display = function() {
      console.log(this.white.face);
      console.log(this.green.face);
      console.log(this.red.face);
      console.log(this.blue.face);
      console.log(this.orange.face);
      return console.log(this.yellow.face);
    };

    return Cube;

  })();

  c = new Cube("Rubik's");

  c.white.cw();

}).call(this);
