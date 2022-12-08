const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

//大項分類title
router.get('/title',async (req,res)=>{
    // const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`sid`')
    const [rows] = await db.query('SELECT DISTINCT `campaign_type`.`campaign_type_name`, `campaign_type`.`camptype_sid` FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`camptype_sid` ORDER BY `campaign_type`.`camptype_sid` ASC')
    // const [rows] = await db.query('SELECT * FROM campaign')
    res.json(rows);
})

//全部資料
router.get('/all',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`camptype_sid` JOIN `campaign_days` ON `campaign`.`campaign_days_sid` = `campaign_days`.`campday_sid`')
      res.json(rows);
})

//select天數分類
router.get('/select',async (req,res)=>{
  const [rows] = await db.query('SELECT DISTINCT `campaign_days`.`dayname`, `campaign_days`.`campday_sid` FROM `campaign` JOIN `campaign_days` ON `campaign`.`campaign_days_sid` =`campaign_days`.`campday_sid` ORDER BY `campaign_days`.`campday_sid` ASC')
  res.json(rows);
})

//select難度分類
router.get('/level',async (req,res)=>{
  const [rows] = await db.query('SELECT DISTINCT `mountain`.`level` FROM `campaign` JOIN `mountain` ON `campaign`.`mountain_sid` =`mountain`.`mountain_sid` ORDER BY `mountain`.`mountain_sid` DESC')
  res.json(rows);
})

//評價資料
router.get('/comm',async (req,res)=>{
  const [rows] = await db.query('SELECT * FROM `campaign` JOIN `campaign_type` ON `campaign`.`campaign_type_sid` =`campaign_type`.`camptype_sid` JOIN `campaign_days` ON `campaign`.`campaign_days_sid` = `campaign_days`.`campday_sid` JOIN `campaign_order` ON `campaign`.`c_sid` = `campaign_order`.`campaign_sid`' )
    res.json(rows);
})


//camp_sid 細節頁
router.get('/:sid',async (req,res)=>{
  let sid = req.params.sid ? req.params.sid.trim() : '';
  where ='WHERE 1'
  console.log(sid)
  if(sid){
    where = `WHERE campaign.c_sid=${sid}`;
  }
  console.log(where)
    const [rows] = await db.query(`SELECT * FROM \`campaign\` JOIN \`location\` ON \`campaign\`.\`location_sid\` =\`location\`.\`sid\` JOIN \`mountain\` ON \`campaign\`.\`mountain_sid\` =\`mountain\`.\`mountain_sid\` ${where}`)
      

      rows.map((v, i) =>  v.detailImages = v.detailImages.split(', ')
    )
    res.json(rows);
})



module.exports = router;