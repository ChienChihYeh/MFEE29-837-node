const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

router.get('/title',async (req,res)=>{
    // const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`sid`')
    const [rows] = await db.query('SELECT DISTINCT `campaign_type`.`campaign_type_name`, `campaign_type`.`camptype_sid` FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`camptype_sid` ORDER BY `campaign_type`.`camptype_sid` ASC')
    // const [rows] = await db.query('SELECT * FROM campaign')
    res.json(rows);
})

router.get('/all',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`camptype_sid` JOIN `campaign_days` ON `campaign`.`campaign_days_sid` = `campaign_days`.`campday_sid`')
      res.json(rows);
})

//camp_sid 細節頁
router.get('/:sid',async (req,res)=>{
  let sid = req.params.sid ? req.params.sid.trim() : '';
  where ='WHERE 1'
  console.log(sid)
  if(sid){
    where = `WHERE campaign.sid=${sid}`;
  }
  console.log(where)
    const [rows] = await db.query(`SELECT * FROM \`campaign\` JOIN \`location\` ON \`campaign\`.\`location_sid\` =\`location\`.\`location_sid\` JOIN \`mountain\` ON \`campaign\`.\`mountain_sid\` =\`mountain\`.\`mountain_sid\` ${where}`)
      res.json(rows);
})



module.exports = router;