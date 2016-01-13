/**
* Article.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {

    author: {
      type: 'string'
    },

    category: {
      type: 'string'
    },

    title: {
      type: 'string'
    },

    shortText: {
      type: 'text',
      size: 140
    },

    text: {
      type: 'text'
    },

    pictures: {
      type: 'string'
    },

    views: {
      type: 'int'
    },

    articleComments: {
      collection: 'articleComment',
      via: 'articleCommentator'
    }
  }
};

