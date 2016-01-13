/**
* Project.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {

    projectName: {
      type: 'string'
    },

    category: {
      type: 'string'
    },

    goal: {
      type: 'double'
    },

    collected: {
      type: 'double'
    },

    shortDescription: {
      type: 'string',
      syze: 24
    },

    description: {
      type: 'text'
    },

    pictures: {
      type: 'string'
    },

    views: {
      type: 'int'
    },

    creator: {
      model: 'user'
    },

    contributions: {
      collection: 'contribution',
      via: 'onProject'
    },

    projectComments: {
      collection: 'projectComment',
      via: 'projectCommentator'
    }



  }
};

