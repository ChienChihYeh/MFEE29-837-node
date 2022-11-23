const express = require('express');
const router = express.Router();
const db = require(__dirname + '/../modules/db_connect2.js');
const upload = require(__dirname + '/../modules/upload-img')

//訂房主頁面
router.get('/list',async (req,res)=>{
    const [rows] = await db.query('SELECT * FROM room JOIN mountain on room.mountain_sid=mountain.mountain_sid')
    const [M1rows] = await db.query('SELECT * FROM room JOIN mountain on room.mountain_sid=mountain.mountain_sid JOIN location ON location.sid=room.location_sid WHERE room.mountain_sid=3 LIMIT 4')
    const [M2rows] = await db.query('SELECT * FROM room JOIN mountain on room.mountain_sid=mountain.mountain_sid JOIN location ON location.sid=room.location_sid WHERE room.mountain_sid=2 LIMIT 4')
    const [M3rows] = await db.query('SELECT * FROM room JOIN mountain on room.mountain_sid=mountain.mountain_sid JOIN location ON location.sid=room.location_sid WHERE room.mountain_sid=5 LIMIT 4')
    res.json({
        rows:rows,
        M1rows:M1rows,
        M2rows:M2rows,
        M3rows:M3rows,
        });
})

//SearchBar 內容
router.get('/searchbar',async (req,res)=>{
    const [locationRows] = await db.query('SELECT * FROM location')
    const [mountainRows] = await db.query('SELECT * FROM mountain')
   
    res.json({
        locationRows:locationRows,
        mountainRows:mountainRows
        });
})

//SearchBar SELECT連動
router.get('/searchbar/getlocation',async (req,res)=>{
    const {location_sid}=req.query
    const [locationRows] = await db.query(`SELECT * FROM location `)
    const [mountainRows] = await db.query(`SELECT * FROM mountain WHERE location_sid=${location_sid}`)
   
    res.json({
        locationRows:locationRows,
        mountainRows:mountainRows
        });
})

//SearchBar SELECT連動下方卡片
router.get('/searchbar/getroom',async (req,res)=>{
    const {mountain_sid}=req.query
    const [roomRows] = await db.query(`SELECT * FROM room JOIN mountain on room.mountain_sid=mountain.mountain_sid JOIN location ON location.sid=room.location_sid WHERE room.mountain_sid=${mountain_sid} LIMIT 4`) 
   
    res.json({
        roomRows:roomRows,
        });
})

// SearchBar 關鍵字模糊搜尋
router.get('/searchbar/namegetroom',async (req,res)=>{
    const {roomname}=req.query
    const {mountain}=req.query
    // console.log(req.params.selectRoom)
    // console.log(req.params.roomname)
    const [roomRows] = await db.query(`SELECT * FROM room JOIN mountain on room.mountain_sid=mountain.mountain_sid JOIN location ON location.sid=room.location_sid WHERE room.mountain_sid=${mountain} AND room.room_name LIKE '%${roomname}%'`)
   
    res.json({
        roomRows:roomRows,
        // ABC:'123'
        });
})

module.exports = router;