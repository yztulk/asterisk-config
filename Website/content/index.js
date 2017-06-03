var express = require('express');
var app = express();
var path = require('path');
var fs = require("fs");

app.use(express.static(path.join(__dirname, '/metronic')));

/*
app.get('/', function (req, res) {
	console.log('test');
});
*/

var server = app.listen(8080, function () {
  console.log("Website is running on the server");
});
