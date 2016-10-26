$ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
Backbone.$ = $;

class MainView extends Backbone.View

  el: 'body'

  initialize: () ->
    @render()

  render: () ->
    @$el.html '<h4>Finally it works</h4>'

module.exports = MainView
