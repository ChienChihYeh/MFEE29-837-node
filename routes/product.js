const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

const  ggender = (rows)=>{
    const result = rows.filter((v,i)=>{
        return v.product_category_sid == 9
    })
    res.json(result);
}


router.use((req,res,next)=>{
    req.body.gender
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


router.post('/filter',upload.none(),async(req,res)=>{
   let rows =[]
    if(req.body.brand && req.body.lowPrice && req.body.highPrice){
    [rows]= await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand} AND product_price>=${req.body.lowPrice} AND product_price<=${req.body.highPrice}`)
    
    }else if(req.body.lowPrice && req.body.highPrice){
    [rows] = await db.query(`SELECT *  FROM product WHERE product_price BETWEEN ${req.body.lowPrice}  AND ${req.body.highPrice}  `)    
      
    }else if(req.body.brand){
    [rows]= await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand}`)
        res.json(rows);
    }else if(req.body.proof){
    [rows] = await db.query('SELECT * FROM product')

        
    }else if(req.body.gender || req.body.wProof  ){
    [rows] = await db.query('SELECT * FROM product')
    }
    res.json(rows);
    
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