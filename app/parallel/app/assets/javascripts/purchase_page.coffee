# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $searchInput = $('#searchInput').on 'keyup', ->
    text = $searchInput.val()

    $results = $('#results')
    [].forEach.call $results.children(), (chile) ->
      console.log(chile, chile.innerHTML.indexOf(text) != -1)
      if chile.innerHTML.indexOf(text) != -1
        chile.style.display =  'inherit'
      else
        chile.style.display =  'none'

$(document).ready(ready)
$(document).on('turbolinks:load', ready)
