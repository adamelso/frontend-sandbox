Backbone = require('backbone')

MainView = require('./MainView')

App =
  views: {}

  start: (rootUrl) ->
    console.log "Booting app..."

    App.views.main = new MainView()

    Backbone.history.start
      root: rootUrl
      pushState: true
      hashChange: false

    console.log "App started!"


module.exports = App
