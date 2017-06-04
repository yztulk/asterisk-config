var express = require('express');
var app = express();
var path = require('path');
var fs = require("fs");

app.use(express.static(path.join(__dirname, '/metronic')));
//app.use(express.static(path.join(__dirname, '/asentus')));

var port = 8080;

var server = app.listen(port, function () {
  console.log("Website is running on port " + port);
});
