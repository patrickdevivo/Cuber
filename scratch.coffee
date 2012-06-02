scramble_to_import = {
	edges: { 
		wg: { w: 'b', g: 'w' }
		wo: { w: 'w', o: 'g' }
		wb: { w: 'o', b: 'y' }
		wr: { w: 'w', r: 'o' }
		yg: { y: 'b', g: 'y' }
		yr: { y: 'r', r: 'b' }
		yb: { y: 'r', b: 'w' }
		yo: { y: 'b', o: 'o' }
		go: { g: 'r', o: 'y' }
		ob: { o: 'g', b: 'y' }
		br: { b: 'r', r: 'g' }
		rg: { r: 'g', g: 'o' }
	}
	corners: {
		wgo: { w: 'g', g: 'w', o: 'r' }
		wob: { w: 'g', o: 'r', b: 'y' }
		wbr: { w: 'w', b: 'b', r: 'r' }
		wrg: { w: 'y', r: 'r', g: 'b' }
		ygr: { y: 'b', g: 'w', r: 'o' }
		yrb: { y: 'o', r: 'y', b: 'b' }
		ybo: { y: 'o', b: 'w', o: 'g' }
		yog: { y: 'y', o: 'o', g: 'g' }
	}
}

module.exports = scramble_to_import