Template.userNav.rendered = ->
  $(a).parent('li').addClass 'active' for a in @findAll 'a' when a.pathname == window.location.pathname

Template.userNav.events
  'click li': (e, tmpl) ->
    $(li).removeClass 'active' for li in tmpl.findAll 'li'
    $(e.currentTarget).addClass 'active'


