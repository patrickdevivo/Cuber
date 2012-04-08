(function() {
  var Cube, c, _,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  _ = require('./underscore.min.js');

  _.str = require('./underscore.string.min.js');

  _.mixin(_.str.exports());

  _.str.include('Underscore.string', 'string');

  Cube = (function() {

    function Cube(name, empty) {
      var Corner, Edge, Face, cube;
      this.name = name;
      this.empty = empty != null ? empty : false;
      this.set = __bind(this.set, this);
      this.id = _.uniqueId();
      cube = this;
      Edge = (function() {

        function Edge(id) {
          if (id.length === 2) {
            this[id.charAt(0)] = id.charAt(0);
            this[id.charAt(1)] = id.charAt(1);
          } else {
            console.log("Invalid edge id");
          }
        }

        return Edge;

      })();
      Corner = (function() {

        function Corner(id) {
          if (id.length === 3) {
            this[id.charAt(0)] = id.charAt(0);
            this[id.charAt(1)] = id.charAt(1);
            this[id.charAt(2)] = id.charAt(2);
          } else {
            console.log("Invalid corner id");
          }
        }

        return Corner;

      })();
      Face = (function() {

        function Face(color) {
          this.color = color;
        }

        Face.prototype.display = function() {};

        Face.prototype.cw = function() {
          return cube.turn(this.color, 'cw');
        };

        Face.prototype.ccw = function() {
          return cube.turn(this.color, 'ccw');
        };

        return Face;

      })();
      this.edges = {};
      this.edges['wg'] = new Edge('wg');
      this.edges['wo'] = new Edge('wo');
      this.edges['wb'] = new Edge('wb');
      this.edges['wr'] = new Edge('wr');
      this.edges['yg'] = new Edge('yg');
      this.edges['yr'] = new Edge('yr');
      this.edges['yb'] = new Edge('yb');
      this.edges['yo'] = new Edge('yo');
      this.edges['go'] = new Edge('go');
      this.edges['ob'] = new Edge('ob');
      this.edges['br'] = new Edge('br');
      this.edges['rg'] = new Edge('rg');
      this.corners = {};
      this.corners['wgo'] = new Corner('wgo');
      this.corners['wob'] = new Corner('wob');
      this.corners['wbr'] = new Corner('wbr');
      this.corners['wrg'] = new Corner('wrg');
      this.corners['ygr'] = new Corner('ygr');
      this.corners['yrb'] = new Corner('yrb');
      this.corners['ybo'] = new Corner('ybo');
      this.corners['yog'] = new Corner('yog');
      this.white = new Face('white');
      this.green = new Face('green');
      this.orange = new Face('orange');
      this.blue = new Face('blue');
      this.red = new Face('red');
      this.yellow = new Face('yellow');
    }

    Cube.prototype.display = function() {
      console.log(this.edges);
      return console.log(this.corners);
    };

    Cube.prototype.check = function() {};

    Cube.prototype.get = function(coordinates, key) {
      var output, possibles, type;
      if (key == null) key = true;
      if (typeof coordinates === 'string') coordinates = _.chars(coordinates);
      switch (_.size(coordinates)) {
        case 2:
          type = 'edges';
          break;
        case 3:
          type = 'corners';
          break;
        default:
          console.log('Enter two or three colors to select a position on the cube');
      }
      possibles = this[type];
      output = 'No piece with those coordinates';
      _.each(possibles, function(value, key) {
        var overlap;
        overlap = _.intersection(_.chars(key), coordinates);
        if (_.size(overlap) === _.size(coordinates)) return output = key;
      });
      if (key) {
        return output;
      } else {
        return this[type][output];
      }
    };

    Cube.prototype.set = function(piece, color_key, value) {
      var type;
      piece = this.get(piece);
      switch (_.size(_.chars(piece))) {
        case 2:
          type = 'edges';
          break;
        case 3:
          type = 'corners';
          break;
        default:
          console.log('Enter two or three colors to select a position on the cube');
      }
      return this[type][piece][color_key] = value;
    };

    Cube.prototype.turn = function(face, direction) {
      var ccw_color, corners_to_turn, cube, cw_color, edge, edges_to_turn, input_color, input_edge, order, order_location, outer_color, previous_corners, previous_edges, rotate, _i, _len, _results,
        _this = this;
      cube = this;
      face = face.charAt(0);
      edges_to_turn = [];
      _.each(this.edges, function(value, key, list) {
        if (key.indexOf(face) !== -1) return edges_to_turn.push(key);
      });
      previous_edges = {};
      _.each(edges_to_turn, function(element, index, list) {
        return previous_edges[element] = _this.edges[element];
      });
      corners_to_turn = [];
      _.each(this.corners, function(value, key, list) {
        if (key.indexOf(face) !== -1) return corners_to_turn.push(key);
      });
      previous_corners = {};
      _.each(corners_to_turn, function(element, index, list) {
        return previous_corners[element] = _this.corners[element];
      });
      switch (face) {
        case 'w':
          order = ['green', 'orange', 'blue', 'red'];
          break;
        case 'g':
          order = ['yellow', 'orange', 'white', 'red'];
          break;
        case 'o':
          order = ['green', 'yellow', 'blue', 'white'];
          break;
        case 'b':
          order = ['white', 'orange', 'yellow', 'red'];
          break;
        case 'r':
          order = ['green', 'white', 'blue', 'yellow'];
          break;
        case 'y':
          order = ['blue', 'orange', 'green', 'red'];
          break;
        default:
          console.log("Incorrect face");
      }
      switch (direction) {
        case 'cw':
          rotate = 1;
          break;
        case 'ccw':
          rotate = -1;
          break;
        default:
          console.log("Incorrect direction");
      }
      _.each(order, function(element, index, list) {
        return order[index] = element.charAt(0);
      });
      _results = [];
      for (_i = 0, _len = edges_to_turn.length; _i < _len; _i++) {
        edge = edges_to_turn[_i];
        outer_color = _.reject(_.chars(edge), function(color) {
          return color === face;
        })[0];
        order_location = _.indexOf(order, outer_color);
        cw_color = order_location + 1 === _.size(order) ? _.first(order) : order[order_location + 1];
        ccw_color = order_location - 1 === -1 ? _.last(order) : order[order_location - 1];
        input_color = direction === 'cw' ? ccw_color : direction === 'ccw' ? cw_color : void 0;
        input_edge = _.filter(edges_to_turn, function(edge) {
          return edge.indexOf(input_color) !== -1;
        });
        this.set(edge, face, previous_edges[input_edge][face]);
        _results.push(this.set(edge, outer_color, previous_edges[input_edge][input_color]));
      }
      return _results;
    };

    return Cube;

  })();

  c = new Cube("Rubik's");

  c.white.cw();

  c.display();

}).call(this);
