// const express = require('express')
// const router = express.Router();
const router = require("express").Router();

router.get("/", (req, res) => {
  res.json("GET /colors");
});

router.get("/:name", (req, res) => {
  res.json("GET /colors/:name");
});

router.post("/:name/css-styles", (req, res) => {
  res.json("POST /colors/:name/css-styles");
});

module.exports = router;
