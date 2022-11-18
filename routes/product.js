const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')




router.use((req,res,next)=>{
    next()
})

router.get('/all',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product')
    res.json(rows);
})
router.get('/random',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product ORDER BY RAND() LIMIT 3')
    res.json(rows);
})


router.post ('/filter',upload.none(),async(req,res)=>{
    if(req.body.brand && req.body.lowPrice && req.body.highPrice){
        const [rows] = await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand} AND product_price>=${req.body.lowPrice} AND product_price<=${req.body.highPrice}`)
        res.json(rows);
    }else if(req.body.lowPrice && req.body.highPrice){
        const [rows] = await db.query(`SELECT *  FROM product WHERE product_price BETWEEN ${req.body.lowPrice}  AND ${req.body.highPrice}  `)    
        res.json(rows);
    }else if(req.body.brand){
        const [rows] = await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand}`)
        res.json(rows);
    }else if(req.body.proof){
        const [rows] = await db.query('SELECT * FROM product')
        rows.json(rows);
    }
   
})

// router.post('/brand',upload.none(),async(req,res)=>{
//     // ${req.body.highPrice}
//     // ${req.body.lowPrice} 
//     const [rows] = await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand}`)
//     res.json(rows);
// })


// router.post('/price',upload.none(),async(req,res)=>{
//     // ${req.body.highPrice}
//     // ${req.body.lowPrice} 
//     const [rows] = await db.query(`SELECT *  FROM product WHERE product_price BETWEEN ${req.body.lowPrice}  AND ${req.body.highPrice}  `)
//     res.json(rows);
// })


// router.post('/price&brand',upload.none(),async(req,res)=>{
//     const [rows] = await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand} AND product_price>=${req.body.lowPrice} AND product_price<=${req.body.highPrice}`)
//     res.json(rows); 
// })

module.exports = router;