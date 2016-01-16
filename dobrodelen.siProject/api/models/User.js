/**
* User.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  connection: 'someMysqlServer',
  autoPK: true,
  autoCreatedAt: true,

  attributes: {

    firstname: {
      type: 'string'
    },

    surname: {
      type: 'string'
    },

    username: {
      type: 'string'
    },

    password: {
      type: 'string'
    },

    email: {
      type: 'string'
    },

    projects: {
      collection: 'project',
      via: 'creator'
    },

    contributions: {
      collection: 'contribution',
      via: 'contributor'
    },

    userProjectComments: {
      collection: 'projectComment',
      via: 'projectCommentingUser'
    },

    userArticleComments: {
      collection: 'articleComment',
      via: 'articleCommentingUser'
    }

  }
};

