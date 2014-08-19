class App.Views.Content extends Backbone.View

  template: JST['app/templates/content']

  render: ->
    @$el.html(@template())
    @

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