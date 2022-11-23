const express = require("express")
const router = express.Router()
const db = require(__dirname + "/../modules/db_connect2.js")
const upload = require(__dirname + "/../modules/upload-img")
const fs = require("fs")
const jwt = require("jsonwebtoken")
const { dirname } = require("path")
const sharp = require('sharp');
const { auth } = require(__dirname + "/../modules/auth.js")

// router.get("/api", async (req, res) => {
//   const sql = `SELECT * FROM members WHERE member_sid = ?`;
//   [rows] = await db.query(sql, [req.query.id]);
//   // return {rows};
//   res.send({ rows });
// });

router.post("/login/api", upload.none(), async (req, res) => {
  const sql = "SELECT * FROM `members` WHERE `email` = ?"
  const output = {
    success: false,
    member_sid: "",
    token: "",
  }

  const [result] = await db.query(sql, [req.body.email])

  if (
    result[0] &&
    req.body.password &&
    req.body.password === result[0].password
  ) {
    const token = jwt.sign({ member_sid: result[0].member_sid }, "hiking1214")

    output.member_sid = result[0].member_sid
    output.success = true
    output.token = token
  }

  res.json(output)
})

router.post("/join/api", upload.none(), async (req, res) => {
  // res.json(req.body);

  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    token: "",
    //for debug
  }

  const sql =
    "INSERT INTO `members`(`name`, `password`, `email`, `mobile`, `address`, `birthday`, `nickname`, `intro`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW())"

  const [result] = await db.query(sql, [
    req.body.name,
    req.body.password,
    req.body.email,
    req.body.mobile,
    req.body.address,
    req.body.birthday,
    req.body.nickname,
    req.body.intro,
  ])

  console.log(result)

  const sqlNew = "SELECT * FROM `members` WHERE `email` = ?"
  const [resultNew] = await db.query(sqlNew, [req.body.email])
  const token = jwt.sign({ member_sid: resultNew[0].member_sid }, "hiking1214")

  if (result.affectedRows) {
    output.success = true
    output.token = token
  }

  res.json(output)
})

router.post("/post/api", [ auth, upload.single("image_url")], async (req, res) => {
  const output = {
    update: false,
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    token: "",
    //for debug
  }

  let mid = 0

  if(res.locals.loginUser) {
    mid = res.locals.loginUser.member_sid
  }
  
  //save new post
  const sql = "INSERT INTO `posts`(`member_sid`, `image_url`, `context`, `mountain_sid`) VALUES (?, ?, ?, ?)"

  const [result] = await db.query(sql, [mid, req.file.filename, req.body.context, req.body.mountain_sid])

  if(result.affectedRows) output.update = true

  //update total_height
  if(!output.update) return res.json(output)

  const sqlM = "UPDATE `members` SET `total_height` = `total_height` + ? WHERE `member_sid` = ?"

  const [resultM] = await db.query(sqlM, [req.body.height, mid])

  if (result.affectedRows && resultM.affectedRows) output.success = true
  res.json(output)


})

router.get("/post/api", async (req, res) => {
  let mid = req.query.mid

  const sql = "SELECT * FROM `posts` JOIN `mountain` ON posts.mountain_sid = mountain.mountain_sid JOIN `location` ON mountain.location_sid = location.sid WHERE member_sid = ?"
  const [rows] = await db.query(sql, mid)
  
  res.json(rows)
})

router.get("/profile/api", async (req, res) => {
  mid = req.query.mid
 
  const sql = 'SELECT member_sid, nickname, avatar, intro FROM `members` WHERE member_sid = ?'
  const [rows] = await db.query(sql, mid)
  // console.log({rows});
  res.json({rows})


})

router.get("/locations/api", async (req, res)=> {
  const [rows] = await db.query("SELECT * FROM `location` WHERE 1")
  // console.log(rows)
  res.json({rows})

})

router.get("/mountains/api", async (req, res)=> {
  const sql = "SELECT * FROM `mountain` WHERE location_sid=?"
  const [rows] = await db.query(sql, req.query.id)
  // console.log(rows)
  res.json({rows})

})

// router.use("/api", (req, res, next) => {
//   const auth = req.get("Authorization")

//   //console.log({auth}); // { auth: 'Bearer null' }

//   res.locals.loginUser = null
//   try {
//     if (auth && auth.indexOf("Bearer ") === 0) {
//       const token = auth.slice(7)
//       if (token && token.length) {
//         res.locals.loginUser = jwt.verify(token, "hiking1214")
//       }
     
//     }
//     next()
//   } catch (ex) {
//     res.json("invalid token")
//   }
  
// })

router.put("/post/api", [auth, upload.none()], async(req, res) => {
  let mid = 0
 
  console.log(req.body.context)
   
  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  }

  if(res.locals.loginUser) {
    mid = res.locals.loginUser.member_sid
  }
  const sql = "UPDATE `posts` SET `context` = ? WHERE post_sid = ?"
  const [result] = await db.query(sql, [req.body.context, req.body.post_sid])

  if (result.affectedRows) output.success = true
  res.json(output)

})

router.delete("/post/api", [auth, upload.none()], async(req, res) => {
  const output = {
    update: false,
    success: false,
    code: 0,
    error: {},
    //for debug
  }

  const sql = "DELETE FROM `posts` WHERE post_sid = ?"

  const [result] = await db.query(sql, req.query.sid)

  if(result.affectedRows) output.update = true

  if(!output.update) return res.json(output)

  const sqlM = "UPDATE `members` SET `total_height` = `total_height` - ? WHERE `member_sid` = ?"

  const [resultM] = await db.query(sqlM, [req.query.height ,res.locals.loginUser.member_sid])

  if (result.affectedRows && resultM.affectedRows) output.success = true
  res.json(output)


})

router.get("/api", auth, async (req, res) => {
  // console.log(mid);

  let mid = 0

  if (res.locals.loginUser) {
    mid = res.locals.loginUser.member_sid
    const sql = `SELECT * FROM members WHERE member_sid = ?`
    const [rows] = await db.query(sql, mid)
    res.json({ rows })
  }
})

router.put("/api", [ auth, upload.single("avatar")], async (req, res) => {
  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  }

  let mid = 0

  const sql =
    "UPDATE `members` SET `name`=?,`email`=?,`mobile`=?,`address`=?,`birthday`=?,`nickname`=?, `avatar`=?, `intro`=? WHERE `member_sid` =?"

  let avatarFilename = req.body.prevAvatar

  console.log("old avatar:" + avatarFilename)


  if (req.file) {
    avatarFilename = req.file.filename

    const path = ("../public/uploads/" + avatarFilename)
  
    // console.log(req.file.path) 

    sharp(req.file.path).resize({
      fit: sharp.fit.contain,
      width: 200
  }).toFile(__dirname+ '/../public/uploads/thumb_' + req.file.filename)

    if (req.body.prevAvatar) {
      fs.unlink(
        __dirname + `/../public/uploads/${req.body.prevAvatar}`,
        (err) => {
          // if (err) throw err; //handle your error the way you want to;
          //or else the file will be deleted
        }
      )
      fs.unlink(
        __dirname + `/../public/uploads/thumb_${req.body.prevAvatar}`,
        (err) => {
          // if (err) throw err; //handle your error the way you want to;
          //or else the file will be deleted
        }
      )
    }
  }

  if(res.locals.loginUser){
    mid = res.locals.loginUser.member_sid
  }

  const [result] = await db.query(sql, [
    req.body.name,
    req.body.email,
    req.body.mobile,
    req.body.address,
    req.body.birthday || null,
    req.body.nickname,
    avatarFilename,
    req.body.intro,
    mid,
    // req.params.sid
  ])

  console.log(result)

  if (result.affectedRows) output.success = true
  res.json(output)
})

router.put("/api/pass", [auth, upload.none()], async (req, res) => {
  // return res.json(res.locals.loginUser.member_sid)
  // 測試傳過來的body

  const output = {
    success: false,
    code: 0,
    error: {},
    postData: req.body,
    //for debug
  }

  // console.log(res.locals.loginUser.member_sid)

  const sqlVer = "SELECT `password` from members WHERE member_sid = ?"

  const [rows] = await db.query(sqlVer, [res.locals.loginUser.member_sid])

  if (rows[0] && rows[0].password === req.body.password) {
    const sql = "UPDATE `members` SET `password`=? WHERE `member_sid` =?"
    const [result] = await db.query(sql, [
      req.body.newPass,
      res.locals.loginUser.member_sid,
    ])
    if (result.affectedRows) output.success = true
    // console.log(result);
    // console.log(result.affectedRows);
  }

  res.json(output)
})

module.exports = router
