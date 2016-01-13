/**
* ProjectComment.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {

    text: {
      type: 'text'
    },

    likes: {
      type: 'int'
    },

    projectCommentator: {
      model: 'project'
    },

    projectCommentingUser: {
      model: 'user'
    }

  }
};

