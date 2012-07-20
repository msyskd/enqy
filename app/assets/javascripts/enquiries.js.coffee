# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#enquiry_closed").click ->
    if $("#enquiry_closed").is ':checked'
      today = new Date()
      $("#enquiry_end_1i").val today.getFullYear()
      $("#enquiry_end_2i").val today.getMonth() + 1
      $("#enquiry_end_3i").val today.getDate()
    else
      $("#enquiry_end_1i").val('')
      $("#enquiry_end_2i").val('')
      $("#enquiry_end_3i").val('')
    