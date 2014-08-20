class App.Views.Content extends Backbone.View

  template: JST['app/templates/content']

  render: ->
    @$el.html(@template())
    @

  initialize: ->
    @listenTo App.Vent, 'project:create', @swapMainToEmpty
    @listenTo App.Vent, 'project:new', @swapMainToNewProject

  swapMainToEmpty: ->
    @swapMain(new App.Views.Empty())
    Backbone.history.navigate('/projects')

  swapMainToNewProject: ->
    @swapMain(new App.Views.NewProject({ model: new App.Models.Project }))
    Backbone.history.navigate('/projects/new')

  swapMain: (view) ->
    @changeCurrentMainView(view)
    @$('#main-area').html(@currentMainView.render().el)

  changeCurrentMainView: (view) ->
    @currentMainView.remove() if @currentMainView
    @currentMainView = view

  swapSide: (view) ->
    @changeCurrentSideView(view)
    @$('#sidebar-area').html(@currentSideView.render().el)

  changeCurrentSideView: (view) ->
    @currentSideView.remove() if @currentSideView
    @currentSideView = view