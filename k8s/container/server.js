var http = require('http');
http.createServer(function (req, res) {

    var arguments = require('url').parse(req.url, true);
    var query = arguments['query'];

    var command = '';
    if (typeof query['command'] !== 'undefined') {
        command = query['command'];
    }

    var resultFromCommandHandler = "Work result for command: " + command;
    var statusFromCommandHandler = "OK";

    var response = { "status" : statusFromCommandHandler, "result" : resultFromCommandHandler };

    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end( JSON.stringify(response) );

}).listen(1337);

console.log('Server running at http://127.0.0.1:1337/');