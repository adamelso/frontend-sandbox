$ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
Backbone.$ = $;

dashboard = require('./dashboard')

class MainView extends Backbone.View

  el: '#app'

  initialize: () ->
    @render()

  render: () ->
    @$el.html dashboard name: 'Adam'

module.exports = MainView
