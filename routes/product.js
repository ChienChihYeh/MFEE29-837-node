const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

router.get('/',async(req,res)=>{
    const [rows] = await db.query('SELECT *  FROM product ')
    res.json(rows); 
})

module.exports = router;