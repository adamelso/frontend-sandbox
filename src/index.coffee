App       = require('./app')
$         = require('jquery')

$ ->
  App.start(document.getElementById('app').getAttribute('data-base-url'))
