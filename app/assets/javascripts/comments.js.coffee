# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@comment_validation = ->
  $("input[name=commit]").on "click", ->
    valid = true
    if $("#comment_commenter").val() is ""
      $("#comment_commenter").addClass "InputError"
      $("#errorCommenter").show()
      valid = false
    else
      $("#comment_commenter").removeClass "InputError"
      $("#errorCommenter").hide()
    if $("#comment_body").val() is ""
      $("#comment_body").addClass "InputError"
      $("#errorBody").show()
      valid = false
    else
      $("#comment_body").removeClass "InputError"
      $("#errorBody").hide()
    false  unless valid

  return