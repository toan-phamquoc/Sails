/**
 * PlanController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
  friendlyName: 'New the plan info',
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
      viewTemplatePath: 'pages/admin/user/new'
    },
    notFound: {
      description: 'No Team or Position was found in the database. Please create Team or Position before',
      responseType: 'notFound'
    }
  },

  fn: async function (inputs, exits) {
    var teams = await Team.find();
    var positions = await Position.find();

    if(!teams || !positions){
      return exits.notFound();
    }
    return exits.success({ teams: teams, positions: positions });
  }
};
