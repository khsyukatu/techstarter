# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->	
  $('#post_type').on 'change', ->
    if $(this).val() == "1"
      alert "stop"
    else
      alert "go"
    return