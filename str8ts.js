var currentTime = new Date();
currentTime = currentTime.toDateString();
currentTime = currentTime.replace(/\s+/g, '_');
var file_name = currentTime + "str8ts.png";
var page = require('webpage').create();
page.open('http://www.str8ts.de/', function() {
  page.render(file_name);
  phantom.exit();
});



