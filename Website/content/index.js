var express = require('express');
var app = express();
var path = require('path');
var fs = require("fs");

app.use(express.static(path.join(__dirname, '/metronic')));

var server = app.listen(8085, function () {
  console.log("Website is running on the server");
});
