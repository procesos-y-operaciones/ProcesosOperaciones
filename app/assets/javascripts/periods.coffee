$ ->
  $('.clickable-row').click ->
    window.location = $(this).data('href')

  $('#date_end_p1').change ->
    $('#date_beg_p2').val( $('#date_end_p1').val() )
    $('#date_beg_p2').trigger("change")

  $('#date_end_p2').change ->
    $('#date_beg_p3').val( $('#date_end_p2').val() )
    $('#date_beg_p3').trigger("change")

  $('#date_end_p3').change ->
    $('#date_beg_p4').val( $('#date_end_p3').val() )
    $('#date_beg_p4').trigger("change")

  $('#date_beg_p1').change ->
    $('#date_end_p1').attr( "min", $('#date_beg_p1').val() )

  $('#date_beg_p2').change ->
    $('#date_end_p2').attr( "min", $('#date_beg_p2').val() )

  $('#date_beg_p3').change ->
    $('#date_end_p3').attr( "min", $('#date_beg_p3').val() )

  $('#date_beg_p4').change ->
    $('#date_end_p4').attr( "min", $('#date_beg_p4').val() )
