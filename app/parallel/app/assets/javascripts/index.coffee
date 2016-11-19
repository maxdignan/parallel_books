# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 $ ->
   $signup = $('#signup')
   $login = $('#login')

   $signupButton = $('#openSignup').on 'click', ->
     $signup.show()
     $login.hide()

   $loginButton = $('#openLogin').on 'click', ->
     $login.show()
     $signup.hide()

   $signup.hide()