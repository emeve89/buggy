class App.Views.Projects extends Backbone.View

  template: JST['app/templates/projects']

  render: ->
    @$el.html(@template())
    @