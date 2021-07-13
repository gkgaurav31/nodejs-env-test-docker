var express = require('express');
var router = express.Router();

/* GET home page. */

const MESSAGE = process.env.TEST;

router.get('/', function(req, res, next) {
  res.render('index', { title: MESSAGE });
});

module.exports = router;
