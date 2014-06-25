orgs = new Meteor.Collection('orgs');

if Meteor.isClient
	Template.orgs.helper orgs: ->
		orgs.find()


# if (Meteor.is_client) {
#   Template.org_list.orgs = function() {
#       return orgs.find(), {name: 1};
#   }
# }