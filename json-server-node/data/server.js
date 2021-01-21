const jsonServer = require('json-server');
const path = require('path');

const server = jsonServer.create();
const router = jsonServer.router(path.join(__dirname, 'db.json'));
const middlewares = jsonServer.defaults();

server.use(middlewares);

// map all routes prefixed with /api to the route in the db.json file
server.use(jsonServer.rewriter({
  '/api/*': '/$1',
}));

server.use(router);

server.listen(8000, () => {
  console.log('JSON Server is running');
});
