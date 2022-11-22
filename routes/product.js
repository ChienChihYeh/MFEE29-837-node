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
//最新商品
router.get('/new',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product ORDER BY product_sid DESC')
    res.json(rows);
})
//熱門商品
router.get('/hot',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product ORDER BY product_sid')
    res.json(rows);
})
//服飾
router.get('/clothe',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=2 or product_category_sid=9 or product_category_sid=10 or product_category_sid=11 or product_category_sid=12')
    res.json(rows);
})
//背包
router.get('/bag',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=3')
    res.json(rows);
})
//鞋子
router.get('/shose',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=4 or product_category_sid=7 or product_category_sid=8')
    res.json(rows);
})
//專業用品
router.get('/accessories',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=5 or product_category_sid=6 or product_category_sid=15')
    res.json(rows);
})
//亂數生成
router.get('/random',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product ORDER BY RAND() LIMIT 3')
    res.json(rows);
})

router.get('/:prodcut_sid',async (req,res)=>{
    const [rows] = await db.query(`SELECT * FROM product WHERE product_sid=${req.params.prodcut_sid}`)
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