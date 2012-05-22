(function() {
  var Cube, Solver, colorize,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  global._ = require('underscore');

  _.str = require('underscore.string');

  _.mixin(_.str.exports());

  _.str.include('Underscore.string', 'string');

  colorize = require('colorize');

  require('console-trace');

  console.log = console.t.log;

  Cube = (function() {

    function Cube(name, verbosity) {
      var Corner, Edge, Face, cube;
      this.name = name != null ? name : "Rubik\'s";
      this.verbosity = verbosity != null ? verbosity : true;
      this.interface = __bind(this.interface, this);
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

        function Face(color, opposite) {
          this.color = color;
          this.opposite = opposite;
        }

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
      this.w = new Face('w', 'y');
      this.g = new Face('g', 'b');
      this.o = new Face('o', 'r');
      this.b = new Face('b', 'g');
      this.r = new Face('r', 'o');
      this.y = new Face('y', 'w');
      this.history = {
        complete: [],
        scramble: [],
        algorithm: []
      };
      this.perspective = {
        up: 'w',
        left: 'g',
        front: 'r',
        down: 'y',
        right: 'b',
        back: 'o'
      };
    }

    Cube.prototype.change_perspective = function(up, left, front) {
      var p;
      p = this.perspective;
      p.up = up;
      p.left = left;
      p.front = front;
      p.down = this[p.up].opposite;
      p.right = this[p.left].opposite;
      return p.back = this[p.front].opposite;
    };

    Cube.prototype.display = function(log) {
      var f, output,
        _this = this;
      if (log == null) log = true;
      f = function(piece) {
        return _this.fetch(piece);
      };
      output = "          --+-+-+--\n" + ("          | " + (f('ogy').o) + " " + (f('oy').o) + " " + (f('oby').o) + " |\n") + ("          | " + (f('og').o) + " o " + (f('ob').o) + " |\n") + ("          | " + (f('ogw').o) + " " + (f('ow').o) + " " + (f('obw').o) + " |\n") + "--+-+-+-- --+-+-+-- --+-+-+--\n" + ("| " + (f('gyo').g) + " " + (f('go').g) + " " + (f('gow').g) + "] | | " + (f('wog').w) + " " + (f('wo').w) + " " + (f('wob').w) + " | | " + (f('bow').b) + " " + (f('bo').b) + " " + (f('boy').b) + " |\n") + ("| " + (f('gy').g) + " g " + (f('gw').g) + " | | " + (f('wg').w) + " w " + (f('wb').w) + " | | " + (f('bw').b) + " b " + (f('by').b) + " |\n") + ("| " + (f('gry').g) + " " + (f('gr').g) + " " + (f('gwr').g) + " | | " + (f('wgr').w) + " " + (f('wr').w) + " " + (f('wbr').w) + " | | " + (f('brw').b) + " " + (f('br').b) + " " + (f('byr').b) + " |\n") + "--+-+-+-- --+-+-+-- --+-+-+--\n" + ("          | " + (f('rgw').r) + " " + (f('rw').r) + " " + (f('rwb').r) + " |\n") + ("          | " + (f('rg').r) + " r " + (f('rb').r) + " |\n") + ("          | " + (f('rgy').r) + " " + (f('ry').r) + " " + (f('ryb').r) + " |\n") + "          --+-+-+--\n" + ("          | " + (f('ryg').y) + " " + (f('ry').y) + " " + (f('ryb').y) + " |\n") + ("          | " + (f('gy').y) + " y " + (f('yb').y) + " |\n") + ("          | " + (f('gyo').y) + " " + (f('yo').y) + " " + (f('byo').y) + " |\n") + "          --+-+-+--\n";
      colorize.ansicodes.g = '\u001b[32m';
      colorize.ansicodes.r = '\u001b[31m';
      colorize.ansicodes.w = '\u001b[37m';
      colorize.ansicodes.b = '\u001b[38;5;25m';
      colorize.ansicodes.y = '\u001b[38;5;142m';
      colorize.ansicodes.o = '\u001b[38;5;94m';
      output = output.replace(/g/gi, '#g[◙]').replace(/r/gi, '#r[◙]').replace(/w/gi, '#w[◙]').replace(/b/gi, '#b[◙]').replace(/y/gi, '#y[◙]').replace(/o/gi, '#o[◙]');
      if (log) {
        colorize.ansify(output);
        colorize.console.log(output);
      }
      return output;
    };

    Cube.prototype.check = function() {
      var corners_good, edges_good, final;
      edges_good = true;
      _.each(this.edges, function(value, key) {
        return _.each(value, function(position, color) {
          if (color !== position) return edges_good = false;
        });
      });
      corners_good = true;
      _.each(this.corners, function(value, key) {
        return _.each(value, function(position, color) {
          var corners;
          if (color !== position) return corners = false;
        });
      });
      final = edges_good && corners_good;
      if (this.verbosity) {
        if (final) {
          console.log("Cube is solved!");
        } else {
          console.log("Cube is not solved");
        }
      }
      return final;
    };

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

    Cube.prototype.fetch = function(piece) {
      return this.get(piece, false);
    };

    Cube.prototype.fetch_by_perspective = function(piece) {
      var fetch, output,
        _this = this;
      piece = _.chars(piece);
      fetch = '';
      output = {};
      _.each(piece, function(perspective, index) {
        var face;
        perspective = perspective.toLowerCase();
        switch (perspective) {
          case 'u':
            face = 'up';
            break;
          case 'd':
            face = 'down';
            break;
          case 'r':
            face = 'right';
            break;
          case 'l':
            face = 'left';
            break;
          case 'f':
            face = 'front';
            break;
          case 'b':
            face = 'back';
        }
        fetch += _this.perspective[face];
        return output[perspective] = '';
      });
      _.each(this.fetch(fetch), function(value, key) {
        var index;
        index = _this.color_to_perspective(key);
        return output[index] = _this.color_to_perspective(value);
      });
      return output;
    };

    Cube.prototype.color_to_perspective = function(color) {
      var output;
      output = '';
      _.each(this.perspective, function(value, perspective) {
        if (color === value) return output = perspective.charAt(0);
      });
      return output;
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

    Cube.prototype.turn_by_perspective = function(turn) {
      var direction, face;
      turn = turn.charAt(0);
      switch (turn) {
        case turn.toLowerCase():
          direction = 'cw';
          break;
        case turn.toUpperCase():
          direction = 'ccw';
      }
      turn = turn.toLowerCase();
      switch (turn) {
        case 'u':
          face = this.perspective.up;
          break;
        case 'd':
          face = this.perspective.down;
          break;
        case 'r':
          face = this.perspective.right;
          break;
        case 'l':
          face = this.perspective.left;
          break;
        case 'f':
          face = this.perspective.front;
          break;
        case 'b':
          face = this.perspective.back;
      }
      return this.turn(face, direction);
    };

    Cube.prototype.turn = function(face, direction, history) {
      var ccw_color, ccw_colors, corner, corners_to_turn, cube, cw_color, cw_colors, edge, edges_to_turn, history_input, input_color, input_colors, input_corner, input_edge, order, order_location, other_colors, outer_color, previous_corners, previous_edges, rotate, _i, _j, _len, _len2,
        _this = this;
      if (history == null) history = true;
      cube = this;
      face = face.charAt(0);
      if (!direction) {
        switch (face) {
          case face.toLowerCase():
            direction = 'cw';
            break;
          case face.toUpperCase():
            direction = 'ccw';
        }
      }
      face = face.toLowerCase();
      if (!/[wgrbyoWGRBYO]/.test(face)) console.log('Invalid face');
      edges_to_turn = [];
      _.each(this.edges, function(value, key, list) {
        if (key.indexOf(face) !== -1) return edges_to_turn.push(key);
      });
      previous_edges = {};
      _.each(edges_to_turn, function(element, index, list) {
        return previous_edges[element] = _.clone(_this.edges[element]);
      });
      corners_to_turn = [];
      _.each(this.corners, function(value, key, list) {
        if (key.indexOf(face) !== -1) return corners_to_turn.push(key);
      });
      previous_corners = {};
      _.each(corners_to_turn, function(element, index, list) {
        return previous_corners[element] = _.clone(_this.corners[element]);
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
          console.log("Incorrect face: " + face);
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
        this.set(edge, outer_color, previous_edges[input_edge][input_color]);
      }
      for (_j = 0, _len2 = corners_to_turn.length; _j < _len2; _j++) {
        corner = corners_to_turn[_j];
        other_colors = _.reject(_.chars(corner), function(color) {
          return color === face;
        });
        order_location = [_.indexOf(order, other_colors[0]), _.indexOf(order, other_colors[1])];
        cw_colors = [order_location[0] + 1 === _.size(order) ? _.first(order) : order[order_location[0] + 1], order_location[1] + 1 === _.size(order) ? _.first(order) : order[order_location[1] + 1]];
        ccw_colors = [order_location[0] - 1 === -1 ? _.last(order) : order[order_location[0] - 1], order_location[1] - 1 === -1 ? _.last(order) : order[order_location[1] - 1]];
        input_colors = [direction === 'cw' ? ccw_colors[0] : direction === 'ccw' ? cw_colors[0] : void 0, direction === 'cw' ? ccw_colors[1] : direction === 'ccw' ? cw_colors[1] : void 0];
        input_corner = _.filter(corners_to_turn, function(corner) {
          return corner.indexOf(input_colors[0]) !== -1 && corner.indexOf(input_colors[1]) !== -1;
        });
        this.set(corner, face, previous_corners[input_corner][face]);
        this.set(corner, other_colors[0], previous_corners[input_corner][input_colors[0]]);
        this.set(corner, other_colors[1], previous_corners[input_corner][input_colors[1]]);
      }
      if (history) {
        history_input = direction === 'cw' ? face : direction === 'ccw' ? face.toUpperCase() : void 0;
        this.history.complete.push(history_input);
      }
      if (this.verbosity) console.log("Turned " + face + " " + direction);
      return this;
    };

    Cube.prototype.import_turns = function(turns) {
      var _this = this;
      if (typeof turns !== 'string') {
        console.log('Error: import a string of turns to do');
      }
      turns = _.chars(turns);
      return _.each(turns, function(element, index) {
        return _this.cube.turn(element);
      });
    };

    Cube.prototype.cheat = function() {
      var reverse,
        _this = this;
      reverse = _.clone(this.history.complete).reverse();
      _.each(reverse, function(element, index) {
        var move;
        switch (element) {
          case element.toUpperCase():
            move = element.toLowerCase();
            break;
          case element.toLowerCase():
            move = element.toUpperCase();
        }
        return _this.turn(move);
      });
      return this;
    };

    Cube.prototype.reset = function() {
      return this.cheat();
    };

    Cube.prototype.scramble = function(n, return_only) {
      var scrambles,
        _this = this;
      if (n == null) n = 100;
      if (return_only == null) return_only = false;
      scrambles = '';
      _.times(n, function() {
        var directions, faces, random_direction, random_face;
        faces = ['white', 'green', 'orange', 'blue', 'red', 'yellow'];
        random_face = _.shuffle(faces)[0];
        directions = ['cw', 'ccw'];
        random_direction = _.shuffle(directions)[0];
        switch (random_direction) {
          case 'cw':
            random_face = random_face.charAt(0).toLowerCase();
            break;
          case 'ccw':
            random_face = random_face.charAt(0).toUpperCase();
        }
        if (!return_only) {
          _this.turn(random_face);
          _this.history.scramble.push([random_face, random_direction]);
        }
        return scrambles = scrambles + random_face;
      });
      return scrambles;
    };

    Cube.prototype.interface = function() {
      var ask, cube, prompt, screen;
      prompt = require('prompt');
      console.log('\u001B[2J\u001B[0;0f');
      this.display();
      cube = this;
      prompt.start();
      screen = function() {
        console.log('\u001B[2J\u001B[0;0f');
        return cube.display();
      };
      ask = function() {
        var _this = this;
        return prompt.get(['turn'], function(err, result) {
          if (/[wgrbyoWGRBYO]/.test(result.turn) && result.turn.length === 1) {
            cube.turn(result.turn);
            screen();
            return ask();
          } else if (result.turn === 'reset') {
            cube.reset();
            screen();
            return ask();
          } else if (result.turn === 'scramble') {
            /*
            					scrambles = _.chars(cube.scramble(500, true))
            					_.each(scrambles, (turn, index) =>
            						cube.turn(turn)
            						screen()
            						ask()
            					)
            */
            cube.scramble();
            screen();
            return ask();
          } else if (err) {
            return console.log(err);
          } else {
            console.log('Invalid turn');
            return ask();
          }
        });
      };
      return ask();
    };

    return Cube;

  })();

  Solver = (function() {

    function Solver(cube, perspective) {
      this.cube = cube != null ? cube : cube;
      this.perspective = perspective != null ? perspective : false;
      this.queue = [];
    }

    Solver.prototype.add_algorithm = function(turns, condition) {
      return this.queue.push([turns, condition]);
    };

    Solver.prototype.run_algorithm = function(turns, condition) {
      var check_turn, checker, execute_turn,
        _this = this;
      check_turn = function(turn) {
        if (!_this.perspective) return /[wgrbyoWGRBYO]/.test(turn);
        if (_this.perspective) return /[udrlfbPDRLFB]/.test(turn);
      };
      execute_turn = function(turn) {
        if (check_turn(turn)) {
          if (!_this.perspective) {
            _this.cube.turn(turn);
            _this.cube.history.algorithm.push(turn);
          }
          if (_this.perspective) return _this.cube.turn_by_perspective(turn);
        }
      };
      if (typeof turns === 'string') turns = _.chars(turns);
      if (typeof condition === 'function') {
        if (condition(this.cube)) {
          _.each(turns, function(turn, index) {
            return execute_turn(turn);
          });
        }
      }
      if (typeof condition === 'object') {
        checker = true;
        if (!this.perspective) {
          _.each(condition, function(colors, piece) {
            return _.each(colors, function(value, key) {
              if (_this.cube.get(piece, false)[key] !== value) {
                return checker = false;
              }
            });
          });
        }
        if (this.perspective) {
          _.each(condition, function(perspectives, piece) {
            return _.each(perspectives, function(value, key) {
              if (_this.cube.fetch_by_perspective(piece)[key] !== value) {
                return checker = false;
              }
            });
          });
        }
        if (checker) {
          return _.each(turns, function(turn, index) {
            return execute_turn(turn);
          });
        }
      }
    };

    Solver.prototype.go = function() {
      var _this = this;
      _.each(this.queue, function(element, index) {
        return _this.run_algorithm(element[0], element[1]);
      });
      return this.cube.check();
    };

    Solver.prototype.export_turns = function() {
      var output,
        _this = this;
      output = '';
      _.each(this.queue, function(element, index) {
        console.log(element[1]);
        if (element[1]) return output = output + element[0];
      });
      return output;
    };

    Solver.prototype.import_algorithms = function(algorithms) {
      var _this = this;
      if (typeof algorithms !== 'object') console.log('Invalid algorithms input');
      return _.each(algorithms, function(element, index) {
        var conditions, turns;
        conditions = element[0];
        turns = element[1];
        return _this.add_algorithm(turns, conditions);
      });
    };

    return Solver;

  })();

  module.exports.Cube = Cube;

  module.exports.Solver = Solver;

}).call(this);
