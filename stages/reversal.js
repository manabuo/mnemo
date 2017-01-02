module.exports = {
	name: 'reversal',
	version: 2,
	parts: {
		wireI: null,
		wireL: null,
		wireT: null,
		wireX: null,
		'times-2': null,
		'times-3': null,
		'div-2': null,
		'div-3': null,
		'plus-1': null,
		'plus-2': null,
		'minus-1': null,
		'minus-2': null,
		'const-0': null,
		'const-1': null,
		'const-2': null,
		add: null,
		sub: null,
		div: null,
		mul: null,
		mod: null,
		pow: null,
		'bitshift-left': null,
		'bitshift-right': null,
		'bitwise-and': null,
		'bitwise-or': null,
		'bitwise-xor': null,
		equal: null,
		neq: null,
		gt: null,
		geqq: null,
		lt: null,
		leqq: null,
		'c-contact': null,
		conditional: null,
		transistor: null,
		diode: null,
	},
	inputX: 7,
	outputX: 7,
	input: [
		2016,
		111111,
		123456789,
	],
	output: [
		6102,
		111111,
		987654321,
	],
	width: 15,
	height: 15,
	clockLimit: 500,
	statement: '数を反転してみよう!',
	title: '反転',
};
