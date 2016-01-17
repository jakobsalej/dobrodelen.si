/**
 * ProjectController
 *
 * @description :: Server-side logic for managing projects
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {

  create: function (req, res) {

    var name = req.param("projectName");
    console.log(name);
    var goal = req.param("goal");
    var short = req.param("shortDescription");
    var long = req.param("longDescription");
    var cat = req.param("category");


    Project.create({projectName: name, goal: goal, collected: '0', shortDescription: short, description: long, category: cat})
      .exec(function createCB(err, created){
        console.log('Created project with name ' + created.projectName);
        res.redirect("new-project-success.html");
      })

  },



  index: function (req, res) {

    Project.find({limit: 6, sort: 'views DESC'}).exec(function findCB(err, projects){
      if(projects.length == 0 || err){
        res.serverError(err);
      }
      else {
        console.log(projects);

        var prva = projects.slice(0, 3);
        var druga = projects.slice(3, 6);
        console.log("Dali na pol?");
        console.log(prva);
        console.log("Druga");
        console.log(druga);

        return res.view('homepage', {
          mostP1: prva,
          mostP2: druga
        });
      }
    });
  },


  main: function (req, res) {

    var id = req.param("id");

    Project.find({where: {id: id}, limit: 1}).exec(function findCB(err, project){
      if(project.length == 0 || err){
        res.serverError(err);
      }
      else {

       console.log(project[0].projectName);

        var title = project[0].projectName;
        var words = title.split(" ");
        console.log(words);

        //naredimo se poizvedbo za sorodne projekte -> to popravi, da bo delalo na arrayu!
        Project.find( { projectName: {'contains' : words[0] } , id: { '!' : project[0].id }, limit: 4}).exec(function findCB(err, similar){
          console.log(similar);

          if(similar.length == 0 || err){

            return res.view('project-main', {
              projekt: project,
              sim: null
            });

          }
          else {
            console.log(similar);

            return res.view('project-main', {
              projekt: project,
              sim: similar
            });
          }
        });

      }
    });
  },



  all: function (req, res) {

    var st = req.param("st");

    //zavarujemo se pred napacnimi vnosi
    if(st == null || st <= 0){
      st = 1;
    }

    var cat = req.param("category");

    if(cat == null || cat == ""){
      cat = ""
    }

    console.log(cat);

    Project.find({sort: 'createdAt DESC'}).exec(function findCB(err, projects){

      console.log(projects.length);


      if(err){
        res.serverError(err);
      }
      else {
        console.log(projects);

        var i = 1;
        while(i*9 < projects.length) {
          i++;
        }

        //preverimo, da uporabnik ne zahteva strani, ki je vecja od vseh strani
        if(i < st){
          st = i;
        }

        var spodnja = (st-1)*9;
        var zgornja = st*9;

        var p = projects.slice(spodnja, zgornja);
        var p1 = p.slice(0,3);
        var p2 = p.slice(3,6);
        var p3 = p.slice(6,9);

        console.log(p);

        return res.view('all-projects', {
          pages: i,
          current: st,
          pr1: p1,
          pr2: p2,
          pr3: p3
        });
      }
    });
  },


};

