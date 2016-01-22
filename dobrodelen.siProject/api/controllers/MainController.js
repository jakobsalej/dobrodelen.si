/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {




  contact: function (req, res) {

    //preverimo, ce je uporabnik vpisan
    var usr;
    if(req.session.user){
      usr = req.session.user.username;
      console.log("Uporabnik shranjen v sejo: " + usr);
    }
    else{
      usr = null;
    }

    return res.view('contact', {
      username: usr
    })

  },


  /**
   * `UserController.delete()`
   */
  delete: function (req, res) {
    return res.json({
      todo: 'delete() is not implemented yet!'
    });
  }
};

