const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('GET / This is the root URL');
});

//resource not found
app.use((req, res, next) => {
  const err = new Error("I'm sorry, Dave. I'm afraid I can't do that.")
  err.statusCode = 404;
  next(err)
})

//catch all
app.use((err, req, res, next) => {
  console.log(err)
  const statusCode = err.statusCode || 500;
  res.status(statusCode);
  res.json({
    message: err.message || "Do you have your towel?",
    statusCode
  })
})

const port = 8080;
app.listen(port, () => console.log('Server is listening on port', port));