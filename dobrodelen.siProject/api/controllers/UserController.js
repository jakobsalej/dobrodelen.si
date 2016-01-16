/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {



  /**
   * `UserController.create()`
   */
  create: function (req, res) {

    var ime = req.param("ime");
    var priimek = req.param("priimek");
    var email = req.param("email");
    var username = req.param("username");
    var geslo = req.param("geslo_2");

    User.create({firstname: ime, surname: priimek, email: email, username: username, password: geslo})
      .exec(function createCB(err, created){
        console.log('Created user with name ' + created.username);
        res.redirect('http://localhost:1337/');
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

