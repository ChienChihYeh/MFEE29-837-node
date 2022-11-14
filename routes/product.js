const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

router.get('/all',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product')
    res.json(rows);
})




router.post('/price',upload.none(),async(req,res)=>{
    // ${req.body.highPrice}
    // ${req.body.lowPrice} 
    const [rows] = await db.query(`SELECT *  FROM product WHERE product_price BETWEEN   ${req.body.lowPrice}  AND ${req.body.highPrice}  `)
    res.json(rows);
})

router.post('/brand',upload.none(),async(req,res)=>{
    const [rows] = await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand}`)
    res.json(rows); 
})



router.post('/price&brand',upload.none(),async(req,res)=>{
    const [rows] = await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand} AND product_price>=${req.body.lowPrice} AND product_price<=${req.body.highPrice}`)
    res.json(rows); 
})

module.exports = router;