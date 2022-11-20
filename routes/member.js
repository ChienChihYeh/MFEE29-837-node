const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img");
const fs = require("fs");
const jwt = require('jsonwebtoken');
const { nextTick } = require("process");

// router.get("/api", async (req, res) => {
//   const sql = `SELECT * FROM members WHERE member_sid = ?`;
//   [rows] = await db.query(sql, [req.query.id]);
//   // return {rows};
//   res.send({ rows });
// });

router.use("/api", async (req, res)=>{
  let mid = '';

  function getToken(req) {
    if (
      req.headers.authorization &&
      req.headers.authorization.split(" ")[0] === "Bearer"
    ) {
      return req.headers.authorization.split(" ")[1];
    } 
    return null;
  }

  const token = getToken(req) || '';

  // if (!token) {
  //   throw new Error("Authorization token is required");
  // }
  if(token !== '') {
    jwt.verify(token, 'hiking1214', function (err, decoded) {
      if (err) {
        // throw err;
        return;
      } else {
        mid = decoded.member_sid;
      }
      // console.log(decoded);
      
      
    });   
  }
  res.body.mid = mid;
  if(mid === ''){
    res.send('Invalid Token')
  }

  next();

})

router.get("/api", async (req, res)=> {

 
  // console.log(mid);

  const sql = `SELECT * FROM members WHERE member_sid = ?`;
  [rows] = await db.query(sql, req.body.mid);
  res.send({ rows });

})

router.post("/login/api", upload.none(), async (req, res) => {
  const sql = "SELECT * FROM `members` WHERE `email` = ?";
  const output = {
      success: false,
      member_sid: '',
      token: '',
  }

  const [result] = await db.query(sql, [req.body.email]);

  if(req.body.password && req.body.password === result[0].password) {

    const token = jwt.sign({member_sid : result[0].member_sid}, 'hiking1214')

    output.member_sid = result[0].member_sid;
    output.success = true;
    output.token = token;
  }

  res.json(output);

});


router.post("join/api", upload.none(), async (req, res) => {
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

  let avatarFilename = "";

  if (req.file) {
    avatarFilename = req.file.filename;

    if (req.body.prevAvatar) {
      fs.unlink(
        __dirname + `/../public/uploads/${req.body.prevAvatar}`,
        (err) => {
          if (err) throw err; //handle your error the way you want to;
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
    req.body.birthday,
    req.body.nickname,
    avatarFilename,
    req.body.intro,
    req.body.mid,
    // req.params.sid
  ]);

  console.log(result);

  if (result.affectedRows) output.success = true;
  res.json(output);
});

router.put("/api/pass", upload.none(), async (req, res) => {
  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  };

  const sqlVer = "SELECT `password` from members WHERE member_sid = ?";

  const [rows] = await db.query(sqlVer, [req.query.id]);

  if (rows[0].password && rows[0].password === req.body.password ) {
    const sql = "UPDATE `members` SET `password`=? WHERE `member_sid` =?";
    const [result] = await db.query(sql, [req.body.newPass, req.query.id]);
    if (result.affectedRows) output.success = true;
    // console.log(result);
    // console.log(result.affectedRows);
  }

  res.json(output);

});

module.exports = router;
