const jwt = require("jsonwebtoken")

const auth = function (req, res, next) {
  const auth = req.get("Authorization")

  //console.log({auth}); // { auth: 'Bearer null' }

  res.locals.loginUser = null
  try {
    if (auth && auth.indexOf("Bearer ") === 0) {
      const token = auth.slice(7)
      if (token && token.length) {
        res.locals.loginUser = jwt.verify(token, "hiking1214")
      }
    }
    
  } catch (ex) {
    res.json("invalid token")
  }
  if(res.locals.loginUser){
    next()
  } else {
    return res.json("invalid token")
  }

}

module.exports = { auth }