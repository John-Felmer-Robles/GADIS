const mysql = require("mysql2/promise");
async function connectDB() {
  const db = await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "express_db",
  });
  console.log("Connected to MySQL database");
  return db;
}

const express = require("express");
const connectDB = require("./db");

const app = express();
app.use(express.json());

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

module.exports = connectDB;
