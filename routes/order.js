const axios = require("axios");
const { HmacSHA256 } = require("crypto-js");
const Base64 = require("crypto-js/enc-base64");
const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img.js");
require("dotenv").config();
const { v4: uuidv4 } = require("uuid");
const {
  LINEPAY_CHANNEL_ID,
  LINEPAY_CHANNEL_SECRET_KEY,
  LINEPAY_VERSION,
  LINEPAY_SITE,
  LINEPAY_RETURN_HOST,
  LINEPAY_RETURN_CONFIRM_URL,
  LINEPAY_RETURN_CANCEL_URL,
} = process.env;
router.get("/api", async (req, res) => {
  //母訂單
  const momOrder =
    "SELECT * FROM `order` WHERE `member_sid`=? ORDER BY sid DESC ";
  [rows] = await db.query(momOrder, [req.query.sid]);
  //商品
  const childOrder =
    "SELECT * FROM `order` join `product_order` on order.order_num = product_order.order_num join product on product_order.products_sid = product.product_sid WHERE order.member_sid=?";
  [proRows] = await db.query(childOrder, [req.query.sid]);
  //房間
  const childOrder2 =
    "SELECT * FROM `order`join `booking_order` on `order`.order_num = booking_order.order_num join room on booking_order.room_sid= room.room_sid where order.member_sid=?";
  [roomRows] = await db.query(childOrder2, [req.query.sid]);
  //租借
  const childOrder3 =
    "SELECT * FROM `order`join `rental_order` on order.order_num = rental_order.order_num join rental on rental_order.rental_sid= rental.rental_product_sid where order.member_sid=?";
  [renRows] = await db.query(childOrder3, [req.query.sid]);

  //活動
  const childOrder4 =
    "SELECT * FROM `order`join `campaign_order` on order.order_num = campaign_order.order_num join campaign on campaign_order.campaign_sid= campaign.sid where order.member_sid=?";
  [camRows] = await db.query(childOrder4, [req.query.sid]);
  res.json({
    rows: rows,
    proRows: proRows,
    roomRows: roomRows,
    renRows: renRows,
    camRows: camRows,
  });
});
let orders = {};
router.post("/createOrder", async (req, res) => {
  const { orderID } = req.params;
  const order = req.body;
  orders = order;
  try {
    //要送出去的東西
    const linePayBody = {
      ...order,
      //成功的頁面跟取消的頁面
      redirectUrls: {
        confirmUrl: `${LINEPAY_RETURN_HOST}/${LINEPAY_RETURN_CONFIRM_URL}`,
        cancelUrl: `${LINEPAY_RETURN_HOST}/${LINEPAY_RETURN_CANCEL_URL}`,
      },
    };
    // const jsonStr = JSON.stringify(linePayBody);
    const uri = "/payments/request";
    const headers = createSignature(uri, linePayBody);

    const url = `${LINEPAY_SITE}/${LINEPAY_VERSION}${uri}`;
    const linePayRes = await axios.post(url, linePayBody, { headers });
    console.log(linePayRes);

    res.json(linePayRes?.data);
  } catch (error) {
    console.log(error);
    res.json(error);
  }
});

router.get("/pay/confirm", async (req, res) => {
  const { transactionId } = req.query;
  try {
    const linePayBody = {
      amount: orders.amount,
      currency: orders.currency,
    };
    const uri = `/payments/${transactionId}/confirm`;
    const headers = createSignature(uri, linePayBody);
    const url = `${LINEPAY_SITE}/${LINEPAY_VERSION}${uri}`;
    const linePayRes = await axios.post(url, linePayBody, { headers });
    console.log(linePayRes);
    res.json(linePayRes?.data);
  } catch (error) {
    console.log(error);
    res.end();
  }
});
//建立簽章的function
function createSignature(uri, linePayBody) {
  const nonce = uuidv4();
  const string = `${LINEPAY_CHANNEL_SECRET_KEY}/${LINEPAY_VERSION}${uri}${JSON.stringify(
    linePayBody
  )}${nonce}`;
  //製作簽章
  const signature = Base64.stringify(
    HmacSHA256(string, LINEPAY_CHANNEL_SECRET_KEY)
  );
  const headers = {
    "Content-Type": "application/json",
    "X-LINE-ChannelId": LINEPAY_CHANNEL_ID,
    "X-LINE-Authorization-Nonce	": nonce,
    "X-LINE-Authorization	": signature,
  };
  return headers;
}

router.get("/test", (req, res) => {
  res.json(uuidv4());
});
module.exports = router;
