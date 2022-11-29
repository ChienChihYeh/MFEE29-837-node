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


router.get("/borad/api", async (req, res) => {
    if(req.query.mid){
        let mid = req.query.mid;
        let mStr = 'member_sid =';
        const sql = 'SELECT follows.follow_sid FROM `members` join `follows` on members.member_sid = follows.member_sid  WHERE members.member_sid = ?'
        const [rows] = await db.query(sql, mid)
    
        const FollowsId = rows.map((v, i) => {
            if(i+1 < rows.length  ){
                mStr += `${v.follow_sid} OR member_sid = `
            }else{
                mStr +=`${v.follow_sid} ORDER BY total_height DESC`
            }
          })
    
          let reg =/\'|’|‘/g
          let a =mStr.replace(reg,"")
          
          let  sql2 = `SELECT * FROM members WHERE ${a}`
          console.log(req.query.search);
          
        
          const [rows0] = await db.query(sql2)
        //   console.log(rows0);
          
        res.json(rows0)
    }else{
        return
    }
    
  })





  router.get("/borad/api2", async (req, res) => {
    const sql = 'SELECT * FROM members  ORDER BY total_height  DESC LIMIT 5'
    const [rows] = await db.query(sql)
    res.json(rows)
  })


  router.get("/borad/api3", async (req, res) => {
    let search = req.query.search
    const sql = `SELECT * FROM members WHERE name LIKE ${ db.escape('%'+search+'%') } ORDER BY total_height DESC LIMIT 10`
    const [rows] = await db.query(sql)
    console.log(rows);
    res.json(rows)
  })

 





router.get('/all',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product GROUP BY product_name ORDER BY product_sid Desc')
    
    res.json(rows);
})
//最新商品
router.get('/new',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product GROUP BY product_name ORDER BY product_sid DESC')
    res.json(rows);
})
//熱門商品
router.get('/hot',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product GROUP BY product_name ORDER BY product_sid')
    res.json(rows);
})
//服飾
router.get('/clothe',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE  product_category_sid=2 or product_category_sid=9 or product_category_sid=10 or product_category_sid=11 or product_category_sid=12 GROUP BY product_name')
    res.json(rows);
})
//背包
router.get('/bag',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=3 GROUP BY product_name')
    res.json(rows);
})
//鞋子
router.get('/shose',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=7 or product_category_sid=8 GROUP BY product_name')
    res.json(rows);
})
//專業用品
router.get('/accessories',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product WHERE product_category_sid=1 or product_category_sid=4 or product_category_sid=5 GROUP BY product_name')
    res.json(rows);
})
//亂數生成
router.get('/random',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM product ORDER BY RAND() LIMIT 3')
    res.json(rows);
})
//品牌
router.get('/brands',async (req,res)=>{
    const [rows] = await db.query(`SELECT distinct p.brand_sid,b.brand_name FROM product as p JOIN brand as b ON p.brand_sid = b.brand_sid`)
    res.json(rows);
})



// router.get('/size',async (req,res)=>{
//     let name = req.query.name ;
//     const [rows] = await db.query(`SELECT size FROM product WHERE product_name=${name}`)
//     console.log(rows);
//     res.json(rows);
// })



router.post('/filter',upload.none(),async(req,res)=>{
   let rows =[]
    if(req.body.brand && req.body.lowPrice && req.body.highPrice){
    [rows]= await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand} AND product_price>=${req.body.lowPrice} AND product_price<=${req.body.highPrice}`)
    
    }else if(req.body.lowPrice && req.body.highPrice){
    [rows] = await db.query(`SELECT *  FROM product WHERE product_price BETWEEN ${req.body.lowPrice}  AND ${req.body.highPrice}  `)    
      
    }else if(req.body.brand){
    [rows]= await db.query(`SELECT *  FROM product WHERE brand_sid=${req.body.brand}`)
        
    }else if(req.body.proof){
    [rows] = await db.query('SELECT * FROM product')

        
    }else if(req.body.gender || req.body.wProof  ){
    [rows] = await db.query('SELECT * FROM product')
    }
    res.json(rows);
    
})


router.get('/:prodcut_sid',async (req,res)=>{
    const [rows] = await db.query(`SELECT * FROM product WHERE product_sid=${req.params.prodcut_sid}`)


   const a = rows.map((v, i) => {
        return (
            v.product_imgs = v.product_imgs.split(',')
        )
    })
   
    res.json(rows);
})

//Size

router.get('/size/:prodcut_sid',async (req,res)=>{
    let Psid = +req.params.prodcut_sid
    let str = `product_sid=${Psid} OR product_sid=${+Psid+1} OR product_sid=${+Psid+2} OR product_sid=${+Psid+3} OR product_sid=${+Psid+5} OR product_sid=${+Psid+6} OR product_sid=${+Psid+7}`
    
    // for (let i=0 ; i<=7 ; i++){
    //     if(i=0){
    //         str += `product_sid=${req.params.prodcut_sid} OR `
    //     }
    //     else if(i<7){
            
    //         str += `product_sid=${Number(req.params.prodcut_sid)+Number(i)} OR `
    //     }else if(i=7){
    //         str += `product_sid=${Number(req.params.prodcut_sid)+Number(i)}`
    //     }
    //     return
    // }
    // ${Sting((Number(req.params.prodcut_sid)+Number(1)))}
    const [rows] = await db.query(`SELECT size FROM product WHERE ${str}`)

    rows.map((v,i)=>{
        return v.shoseChose = false
    })
    res.json(rows);
})

module.exports = router;