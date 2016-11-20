# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

renderNote = (note) ->
  '<li class="jumbotron items">' + note.text + '</li>'

ready = ->
  $noteText = $('#noteText')
  $newNote = $('#newNote')

  $notePlace = $('#notePlace')

  $privateNoteButton = $('#privateNoteButton')
  $publicNoteButton = $('#publicNoteButton')

  AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');

  $newNote.click ->
    text = $noteText.val()
    $noteText.val('')
    $.ajax
      url: "/notes/create"
      method: 'POST'
      data: 'note=' + text + "&authenticity_token=" + encodeURIComponent(AUTH_TOKEN)
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        $notePlace.prepend(renderNote(data))

  personalLoad = ->
    $.ajax
      url: "/notes/personal"
      method: 'get'
      data: "authenticity_token=" + encodeURIComponent(AUTH_TOKEN)
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        console.log data
        $notePlace.html('')
        data.forEach (d) ->
          $notePlace.prepend(renderNote(d))

  publicLoad = ->
    $.ajax
      url: "/notes/public"
      method: 'get'
      data: "authenticity_token=" + encodeURIComponent(AUTH_TOKEN)
      error: (jqXHR, textStatus, errorThrown) ->
        console.log 'error'
      success: (data, textStatus, jqXHR) ->
        console.log data
        $notePlace.html('')
        data.forEach (d) ->
          $notePlace.prepend(renderNote(d))

  personalLoad()
  $privateNoteButton.addClass('border')

  $privateNoteButton.click ->
    $privateNoteButton.addClass('border')
    $publicNoteButton.removeClass('border')
    personalLoad()

  $publicNoteButton.click ->
    $privateNoteButton.removeClass('border')
    $publicNoteButton.addClass('border')
    publicLoad()


$(document).ready(ready)
$(document).on('turbolinks:load', ready)
