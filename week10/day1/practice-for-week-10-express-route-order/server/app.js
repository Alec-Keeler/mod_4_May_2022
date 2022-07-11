const express = require('express');
const app = express();

// app.get('/', (req, res) => {
//     res.send("Server is alive");
// });

// app.get('/hello', (req, res) => {
//     res.send("Hello, my friend!");
// });

// app.get(['/goodbye', '/goodbye/*'], (req, res) => {
//     res.send("Goodbye, my friend!");
// });

// app.get('/goodbye/until/:time', (req, res) => {
//     res.send(`Goodbye. See you ${req.params.time}.`);
// });

// app.get('/goodbye/until/forever', (req, res) => {
//     res.send("So long. Farewell. Have a great life!");
// });
app.get("/hello", (req, res) => {
  res.send("Hello, my friend!");
});

// Debug and fix: Order routes from most-specific to most-generic
app.get("/goodbye/until/forever", (req, res) => {
  res.send("So long. Farewell. Have a great life!");
});

app.get("/goodbye/until/:time", (req, res) => {
  res.send(`Have a nice day! See you ${req.params.time}.`);
});

app.get(["/goodbye", "/goodbye/*"], (req, res) => {
  res.send("Goodbye, my friend!");
});

// Best practice: Place most generic route last
// Note: The app will work properly even without this change
//       because there are no wildcards in this route.
app.get("/", (req, res) => {
  res.send("Server is alive");
});

const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));