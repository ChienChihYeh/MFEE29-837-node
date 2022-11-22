const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img");

//商品大頁搜尋
async function getListData(req){

    const sql = `SELECT * FROM rental`;
    [rows] = await db.query(sql);
    
    return {rows};
}
router.get('/api', async (req, res)=>{
    res.json(await getListData(req));
});


//商品細節內頁
async function getDetailData(req){
    const {rental_product_sid} = req.params
    const sql = `SELECT * FROM rental where rental_product_sid =${rental_product_sid}`;
    [rows] = await db.query(sql);
    
    return {rows};
}

router.get('/getDetailData/:rental_product_sid', async (req, res)=>{
    res.json(await getDetailData(req));
});





//商品名稱模糊搜尋
async function getSearchData(req){
    const{search} = req.query
    const sql = `SELECT * FROM rental where rental_product_name LIKE "%${search}%"`;
    [rows] = await db.query(sql);
    console.log(sql);
    return {rows};
}

router.get('/getSearchData', async (req, res)=>{
    res.json(await getSearchData(req));
    
});
module.exports = router;

