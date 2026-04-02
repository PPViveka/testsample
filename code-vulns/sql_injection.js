// sql_injection.js
const express = require("express");
const app = express();

app.get("/user", (req, res) => {
  const username = req.query.username;

  // ❌ Vulnerable query (no sanitization)
  const query = "SELECT * FROM users WHERE name = '" + username + "'";

  res.send("Query executed: " + query);
});

app.listen(3000);
