class App.Views.Content extends Backbone.View

  template: JST['app/templates/content']

  render: ->
    @$el.html(@template())
    @