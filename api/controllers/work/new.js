/**
 * WorkController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
  friendlyName: 'List works',
  description: 'List works of current user, user must logign.',

  inputs: {
    // userId: {
    //   description: 'The ID of the user to look up.',
    //   // By declaring a numeric example, Sails will automatically respond with `res.badRequest`
    //   // if the `userId` parameter is not a number.
    //   type: 'number'
    //   // By making the `userId` parameter required, Sails will automatically respond with
    //   // `res.badRequest` if it's left out.
    //   //required: true
    // }
  },

  exits: {
    success: {
      responseType: 'view',
      viewTemplatePath: 'pages/work/new'
    },
    notFound: {
      description: 'No user with the specified ID was found in the database.',
      responseType: 'notFound'
    }
  },

  fn: async function(inputs, exits) {
    var projects;

    projects = await Project.find();
    console.log(projects);
    return exits.success({ projects: projects });
  }
};
