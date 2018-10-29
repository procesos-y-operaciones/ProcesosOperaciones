$ ->
  $('.clickable-row').click ->
    window.location = $(this).data('href')

  phases_change = ->
    oldVal = parseInt($('#phases_number_hid').val()) || 0
    newVal = parseInt($('#phases_number').val()) || 0

    #Code Here
    if (newVal - oldVal) > 0
      $('#phases_butt').trigger( "click" ) for i in [0 .. (newVal-oldVal-1)]

    if (newVal - oldVal) < 0
      $('#phases_container').empty()
      $('#phases_butt').trigger( "click" ) for i in [0 .. (newVal-1)]

    $('#phases_number_hid').val( newVal )

  $('#phases_number').change ->
    phases_change()

  phases_change()
