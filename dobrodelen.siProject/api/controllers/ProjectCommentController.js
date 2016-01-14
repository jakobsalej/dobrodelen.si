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
  create: function (req, res) {
    var comment = (req.body.value) ? req.body.value : undefined
    ProjectCommentService.addProjectComment(comment, function(success) {
      res.json(success);
    });
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

