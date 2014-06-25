Router.configure
  debug: true
  notFoundTemplate: 'notFound'
  #before: () ->
    #console.log 'before all'

# login filter
Router.onBeforeAction ->
  if ! Meteor.loggingIn() && ! Meteor.user() && (window.location.pathname != '/')
    console.log window.location.pathname
    @redirect '/'

Router.map  ->

  # Root Url
  @route 'welcome',
    path: '/'

  @route 'user/templates',
    path: '/user/templates'

  @route 'user_contents',
    path: '/user/contents'

  @route 'user/orgs',
  	path: '/user/orgs'
  	
  ###
  # example routing
  @route 'one',
    path: '/'
    onRun: ->
      console.log('load one')
    onBeforeAction: ->
      console.log('before one')
  @route 'two'
  @route 'three',
    where: 'server'
    action: ->
      @response.end('SERVER ROUTE')
  ###
