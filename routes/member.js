const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

router.get('/api', async (req, res)=>{
    const sql = `SELECT * FROM members WHERE member_sid = ?`;
    [rows] = await db.query(sql, [req.query.id]);
    
    return {rows};
})

router.post('/api', upload.none(), async (req, res)=>{

    const output = {
        success: false,
        code: 0,
        error: {},
        postData: req.body,
        //for debug
    }

    const sql = "INSERT INTO `members`(`name`, `password`, `email`, `mobile`, `address`, `birthday`, `nickname`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, ?, NOW())";

    const [result] = await db.query(sql, [
        req.body.name,
        req.body.password,
        req.body.email,
        req.body.mobile,
        req.body.address,
        req.body.birthday,
        req.body.nickname,
    ]);

    console.log(result);

    if(result.affectedRows) output.success = true;

    res.json(output);

})

router.put('/api', upload.single('avatar'), async (req, res)=>{
    const output = {
        success: false,
        code: 0,
        error: {},
        postData: req.body,
        //for debug
    }

    const sql = "UPDATE `members` SET `name`=?,`password`=?,`email`=?,`mobile`=?,`address`=?,`birthday`=?,`nickname`=? WHERE `member_sid` =?";

    const [result] = await db.query(sql, [
        req.body.name,
        req.body.password,
        req.body.email,
        req.body.mobile,
        req.body.address,
        req.body.birthday,
        req.body.nickname,
        req.params.sid
    ]);

    console.log(result);

    if(result.affectedRows) output.success = true;
    res.json(output);

})




module.exports = router;