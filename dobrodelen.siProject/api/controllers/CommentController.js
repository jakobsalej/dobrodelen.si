/**
 * ProjectCommentController
 *
 * @description :: Server-side logic for managing projectcomments
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {

  /**
   * `ProjectCommentController.create()`
   */
  add: function (req, res) {
    var text = req.param("besedilo");
    console.log(text);

    var cr = req.session.user.id;
    var pId = req.session.project;
    console.log(pId);

    ProjectComment.create({text: text, projectCommentingUser: cr, projectCommentator: pId })
      .exec(function createCB(err, created){
        sails.log.debug('Created comment with name ' + created.id);
        res.redirect("project-main.html");
      })
  },


  /**
   * `ProjectCommentController.delete()`
   */
  delete: function (req, res) {
    return res.json({
      todo: 'delete() is not implemented yet!'
    });
  }
};

