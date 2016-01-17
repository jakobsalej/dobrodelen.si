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
        console.log(project);

        return res.view('project-main', {
          projekt: project
        });
      }
    });
  },


};

