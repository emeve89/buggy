class App.Views.Project extends Backbone.View

  template: JST['app/templates/project']

  render: ->
    @$el.html(@template(@model.toJSON()))
    @