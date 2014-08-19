class App.Views.Project extends Backbone.View

  template: JST['app/templates/project']

  events:
    'click a.btn': 'newProject'

  newProject: ->
    

  render: ->
    @$el.html(@template(@model.toJSON()))
    @