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


    var re = /\S+@\S+\.\S+/;
    var test = re.test(email);
    console.log(test);

    if(ime == null || ime == "" || priimek == null || priimek == "" || !test || username == null || username == "" || geslo == null || geslo == "" ){
      return res.view('sign-up', {
        sporocilo: "Prosimo izpolnite vsa polja!"
      })
    }
    else {

      User.find({where: {email: email}, limit: 1}).exec(function findCB(err, found) {
        if (found.length == 0) {

          User.create({firstname: ime, surname: priimek, email: email, username: username, password: geslo})
            .exec(function createCB(err, created) {

              console.log(created);
              sails.log.debug('Created user with name ' + created.username);

              //shranimo kot trenutnega uporabnika
              //shranimo userja v session
              req.session.user = created;
              req.session.authenticated = true;
              sails.log.debug('Logged in user with name ' + created.username);

              res.redirect("/index.html");

            });
        }
        else {
          return res.view('sign-up', {
            sporocilo: "Uporabnik s tem imenom že obstaja!"
          })
        }
      });

    }

  },


  /**
   * `UserController.login()`
   */
  login: function (req, res) {

    console.log("login action");

    var myEmail = req.param("email");
    var pass = req.param("password");


    if(myEmail == "" || myEmail == " " || myEmail == null){
      res.redirect("/log-in.html");
    }
    else {
      User.find({where: {email: myEmail}, limit: 1}).exec(function findCB(err, found){
        if (found.length == 0) {
          return res.view('log-in', {
            sporocilo: "Napačno uporabniško ime!"
          })
        }
        else {

          console.log(found);
          console.log("Iscem: "+myEmail+ " " + pass );

          if(found[0].password == pass) {

            console.log('Logged in user with name ' + found[0].username);
            sails.log.debug('Logged in user with name ' + found[0].username);

            //shranimo userja v session
            req.session.user = found[0];
            req.session.authenticated = true;

            console.log("Uporabnika dodajam v sejo: " + req.session.user.username);

            res.redirect("/index.html");

          }
          else {
            //napacno geslo
            return res.view('log-in', {
              sporocilo: "Napačno geslo!"
            })
          }



        }
      });
    }


  },



  logout: function (req, res) {

    console.log("Zacenjam z log out!");

    sails.log.debug('Logged out user with name ' + req.session.user.username);
    req.session.user = null;
    req.session.authenticated = false;
    res.redirect("/index.html");

  },


  loginMessage: function (req, res) {

    return res.view('log-in', {
      sporocilo: null
    })

  },


  signupMessage: function (req, res) {

    return res.view('sign-up', {
      sporocilo: null
    })

  }


}


;

