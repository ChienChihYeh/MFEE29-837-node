const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img");
const fs = require("fs");
const jwt = require("jsonwebtoken");

// router.get("/api", async (req, res) => {
//   const sql = `SELECT * FROM members WHERE member_sid = ?`;
//   [rows] = await db.query(sql, [req.query.id]);
//   // return {rows};
//   res.send({ rows });
// });

router.post("/login/api", upload.none(), async (req, res) => {
  const sql = "SELECT * FROM `members` WHERE `email` = ?";
  const output = {
    success: false,
    member_sid: "",
    token: "",
  };

  const [result] = await db.query(sql, [req.body.email]);

  if (
    result[0] &&
    req.body.password &&
    req.body.password === result[0].password
  ) {
    const token = jwt.sign({ member_sid: result[0].member_sid }, "hiking1214");

    output.member_sid = result[0].member_sid;
    output.success = true;
    output.token = token;
  }

  res.json(output);
});

router.post("/join/api", upload.none(), async (req, res) => {
  // res.json(req.body);

  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  };

  const sql =
    "INSERT INTO `members`(`name`, `password`, `email`, `mobile`, `address`, `birthday`, `nickname`, `intro`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW())";

  const [result] = await db.query(sql, [
    req.body.name,
    req.body.password,
    req.body.email,
    req.body.mobile,
    req.body.address,
    req.body.birthday,
    req.body.nickname,
    req.body.intro,
  ]);

  console.log(result);

  if (result.affectedRows) output.success = true;

  res.json(output);
});

router.use("/api", (req, res, next) => {
  const auth = req.get("Authorization");

  //console.log({auth}); // { auth: 'Bearer null' }

  res.locals.loginUser = null;
  try {
    if (auth && auth.indexOf("Bearer ") === 0) {
      const token = auth.slice(7);
      if (token && token.length) {
        res.locals.loginUser = jwt.verify(token, "hiking1214");
      }
    }
  } catch (ex) {}

  next();
});

router.get("/api", async (req, res) => {
  // console.log(mid);

  let mid = 0;

  if (res.locals.loginUser) {
    mid = res.locals.loginUser.member_sid;
    const sql = `SELECT * FROM members WHERE member_sid = ?`;
    [rows] = await db.query(sql, mid);
    res.send({ rows });
  }
});

router.put("/api", upload.single("avatar"), async (req, res) => {
  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  };

  const sql =
    "UPDATE `members` SET `name`=?,`email`=?,`mobile`=?,`address`=?,`birthday`=?,`nickname`=?, `avatar`=?, `intro`=? WHERE `member_sid` =?";

  let avatarFilename = req.body.prevAvatar;

  console.log(avatarFilename);

  if (req.file) {
    avatarFilename = req.file.filename;

    if (req.body.prevAvatar) {
      fs.unlink(
        __dirname + `/../public/uploads/${req.body.prevAvatar}`,
        (err) => {
          // if (err) throw err; //handle your error the way you want to;
          console.log("old avatar was deleted"); //or else the file will be deleted
        }
      );
    }
  }

  console.log("avatar:" + avatarFilename);

  const [result] = await db.query(sql, [
    req.body.name,
    req.body.email,
    req.body.mobile,
    req.body.address,
    req.body.birthday || null,
    req.body.nickname,
    avatarFilename,
    req.body.intro,
    res.locals.loginUser.member_sid,
    // req.params.sid
  ]);

  console.log(result);

  if (result.affectedRows) output.success = true;
  res.json(output);
});

router.put("/api/pass", upload.none(), async (req, res) => {
  // return res.json(res.locals.loginUser.member_sid)
  // 測試傳過來的body

  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  };

  // console.log(res.locals.loginUser.member_sid)

  const sqlVer = "SELECT `password` from members WHERE member_sid = ?";

  const [rows] = await db.query(sqlVer, [res.locals.loginUser.member_sid]);

  if (rows[0] && rows[0].password === req.body.password) {
    const sql = "UPDATE `members` SET `password`=? WHERE `member_sid` =?";
    const [result] = await db.query(sql, [
      req.body.newPass,
      res.locals.loginUser.member_sid,
    ]);
    if (result.affectedRows) output.success = true;
    // console.log(result);
    // console.log(result.affectedRows);
  }

  res.json(output);
});

module.exports = router;
