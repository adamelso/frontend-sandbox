MainView = require('./MainView')

App =
  views: {}

  start: ->
    console.log "app started!"

    App.views.main = new MainView()

module.exports = App
