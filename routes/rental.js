const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img.js");
const fetch = require("node-fetch");
const axios = require("axios")

//商品大頁搜尋
async function api(req) {
  const sql = `SELECT * FROM rental `;
  [rows] = await db.query(sql);
  const sql2 = `SELECT COUNT(1) FROM rental`;
  [[count]] = await db.query(sql2);
  // console.log(count['COUNT(1)'])
  // console.log(rows)
  rows.map((v, i) => {
    return (v.rental_img = v.rental_img.split(","));
  });
  rows.map((v, i) => {
    return (v.rental_label = v.rental_label.split(","));
  });

  return rows, count;
}
router.get("/api", async (req, res) => {
  await api(req);
  res.json({ rows: rows, count: count });
});

// 分頁製作
async function getPageData(req) {
  const perPage = 20;
  let page = +req.query.page || 1;

  let search = req.query.search ? req.query.search.trim() : "";
  let where = `WHERE 1 `;
  if (search) {
    where += `AND (\`rental_name\` LIKE ${db.escape("%" + search + "%")})`;
  }
  const sql1 = `SELECT COUNT(1) count FROM rental ${where} `;

  [[{ count }]] = await db.query(sql1);
  let totalPages = 0;
  let rows = [];
  if (count > 0) {
    totalPages = Math.ceil(count / perPage);
  }
  const sql = `SELECT * FROM rental  ${where} ORDER  BY sid DESC LIMIT ${
    (page - 1) * perPage
  },${perPage} `;
  [rows] = await db.query(sql);

  rows.map((v, i) => {
    return (v.rental_img = v.rental_img.split(","));
  });
  rows.map((v, i) => {
    return (v.rental_label = v.rental_label.split(","));
  });
  return { rows, count, totalPages };
}
router.get("/pageApi", async (req, res) => {
  // const {rows, count, totalPages} = await getPageData(req);
  res.json(await getPageData(req));
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

//細節頁店點
async function getStore(req) {
  const sql = `SELECT * FROM store`;
  [rows] = await db.query(sql);
  return { rows };
}
router.get("/getStore", async (req, res) => {
  res.json(await getStore(req));
});

//細節頁猜你喜歡
async function getLike(req) {
  const sql = `SELECT * FROM rental ORDER BY RAND() LIMIT 3`;
  [rows] = await db.query(sql);
  rows.map((v, i) => {
    return (v.rental_img = v.rental_img.split(","));
  });
  rows.map((v, i) => {
    return (v.rental_label = v.rental_label.split(","));
  });
  return { rows };
}
router.get("/getLike", async (req, res) => {
  res.json(await getLike(req));
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

//Azure 串接
router.post("/ai", upload.none(), async (req, res) => {
  const url = process.env.AI_URL;

  const key = process.env.AI_Key;
  const question = {
    question: req.body.question,
  };
  // fd = new FormData("question",req.body.question)
  // response = await axios.post(url,fd)
  fetch(url, {
    method: "POST",
    body: JSON.stringify(question),
    headers: {
      "Content-Type": "application/json",
      "Ocp-Apim-Subscription-Key": key,
    },
  })
    .then((r) => r.json())
    .then((obj) => {
      // console.log(obj);
      const reply = obj.answers[0];
      res.send(reply);
    });1
});

module.exports = router;
