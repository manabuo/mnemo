const express = require('express');
const router = express.Router();

const Stages = require('../models/stage');

router.get('/', (req, res) => {
	Stages.findOne({where: {name: 'wire01'}}).then((stage) => {
		res.end(stage.createdAt.toString());
	});
});

module.exports = router;
