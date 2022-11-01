//環境變數
require('dotenv').config()
//node.js微框架
const express = require('express')
//express的server
const app = express()
//讀寫檔案
const fs = require('fs').promises
const axios = require('axios');
const moment = require('moment-timezone');
const db = require(__dirname + '/modules/db_connect2.js');



//top-Level middleware
//跨網域 白名單
const corsOptions = {
    credentials: true,
    origin: function (origin, callback) {
        // console.log({origin});
        callback(null, true);
    }
};
app.use(cors(corsOptions))
//解析urlencoded,json
app.use(express.urlencoded({extended:false}))
app.use(express.json())
//上傳圖片
const upload = require(__dirname + '/modules/upload-img')
//根目錄
app.get('/',(req,res)=>{
    res.send('歡迎來到express')
})

app.use('/member',require(__dirname + '/routes/member'))
app.use('/product',require(__dirname + '/routes/product'))
app.use('/camp',require(__dirname + '/routes/camp'))
app.use('/rental',require(__dirname + '/routes/rental'))
app.use('/room',require(__dirname + '/routes/room'))
app.use('/order',require(__dirname + '/routes/order'))





//設定靜態資料夾
app.use(express.static('public'));
//設定找不到頁面時顯示的畫面
app.use((req, res) => {
    res.status(404).send('<h1>404-找不到你要的網頁</h1>');
});
//偵聽port
const port = process.env.SERVER_PORT || 3001
app.listen(port,()=>{
    console.log(`server port:${port}`);
})