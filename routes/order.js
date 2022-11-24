const express = require("express");
const router = express.Router();
const db = require(__dirname + "/../modules/db_connect2.js");
const upload = require(__dirname + "/../modules/upload-img.js");

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

module.exports = router;
