
module.exports = function (req, res, next) {
  if (req.session.user) {
    var action = req.param('action');
    if (action == "create") {

      console.log("Action CREATE");

      req.body.userId = req.session.user.id;
      req.body.username = req.session.user.username;
    }
    next();
  } else {
    return res.view('log-in', {
      sporocilo: "Preden nadaljujete, se prosim prijavite."
    })
  }
};
