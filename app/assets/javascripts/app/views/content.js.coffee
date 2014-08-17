class App.Views.Content extends Backbone.View

  template: JST['app/templates/content']

  render: ->
    @$el.html(@template())
    @renderEmptyView()
    @renderProjectsView()
    @

  renderEmptyView: ->
    v = new App.Views.Empty()
    @$('#main-area').html(v.render().el)

  renderProjectsView: ->
    v = new App.Views.Projects({ collection: new App.Collections.Projects })
    @$('#sidebar-area').html(v.render().el)