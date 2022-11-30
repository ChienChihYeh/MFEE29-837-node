const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

router.get('/title',async (req,res)=>{
    // const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`sid`')
    const [rows] = await db.query('SELECT DISTINCT `campaign_type`.`campaign_type_name`, `campaign_type`.`sid` FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`sid` ORDER BY `campaign_type`.`sid` ASC')
    // const [rows] = await db.query('SELECT * FROM campaign')
    res.json(rows);
})

router.get('/all',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`sid` JOIN `campaign_days` ON `campaign`.`campaign_days_sid` = `campaign_days`.`sid`')
      res.json(rows);
})

//camp_sid
router.get('/sid',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM campaign')
      res.json(rows);
})



module.exports = router;