const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img");

//商品大頁搜尋
async function getListData(req) {
  const sql = `SELECT * FROM rental `;
  [rows] = await db.query(sql);
  const sql2 = `SELECT COUNT(1) FROM rental`;
  [[count]] = await db.query(sql2)
  // console.log(count['COUNT(1)'])
  // console.log(rows)
  rows.map((v, i) => {
    return (v.rental_img = v.rental_img.split(","));
  });
  rows.map((v, i) => {
    return (v.rental_label = v.rental_label.split(","));
  });
  
  return rows,count;
}
router.get("/api", async (req, res) => {
  await getListData(req)
  res.json({rows:rows,count:count});
});

//商品細節內頁
async function getDetailData(req) {
  const { sid } = req.params;
  const sql = `SELECT * FROM rental where sid =${sid}`;
  [rows] = await db.query(sql);
  rows[0].rental_img = rows[0].rental_img.split(",");
  console.log(rows);
  return { rows };
}

router.get("/getDetailData/:sid", async (req, res) => {
  res.json(await getDetailData(req));
});

//商品名稱模糊搜尋
async function getSearchData(req) {
  const { search } = req.query;
  const sql = `SELECT * FROM rental where rental_name LIKE "%${search}%"`;
  [rows] = await db.query(sql);
  rows.map((v, i) => {
    return (v.rental_img = v.rental_img.split(","));
  });
  rows.map((v, i) => {
    return (v.rental_label = v.rental_label.split(","));
  });
  console.log(rows);
  return { rows };
}

router.get("/getSearchData", async (req, res) => {
  res.json(await getSearchData(req));
});
module.exports = router;
