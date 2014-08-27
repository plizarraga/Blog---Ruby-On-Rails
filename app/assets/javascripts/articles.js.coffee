# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@article_validation = ->
  $("input[name=commit]").on "click", ->
    valid = true
    if $("#article_title").val() is ""
      $("#article_title").addClass "InputError"
      $("#errorTitle").show()
      valid = false
    else
      $("#article_title").removeClass "InputError"
      $("#errorTitle").hide()
    if $("#article_text").val() is ""
      $("#article_text").addClass "InputError"
      $("#errorText").show()
      valid = false
    else
      $("#article_text").removeClass "InputError"
      $("#errorText").hide()
    false  unless valid

  return