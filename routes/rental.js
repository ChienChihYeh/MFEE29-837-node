const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img");

async function getListData(req) {
  const sql = `SELECT * FROM rental`;
  [rows] = await db.query(sql);

  return { rows };
}

router.get("/api", async (req, res) => {
  res.json(await getListData(req));
});

module.exports = router;
