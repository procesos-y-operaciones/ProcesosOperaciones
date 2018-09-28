$ ->
  $('.clickable-row').click ->
    window.location = $(this).data('href')

  departament_rule = ->
    value = $('#cities').val()
    $.getJSON '/cities_list/' + $('#departament').val(), (data) ->
      $('#cities').empty()
      $('#cities').append '<option value="">SELECCIONE</option>'
      $.each data, (i) ->
        if value == data[i].code
          console.log (data[i].id + ", " + value + " SAME")
          opt = '<option selected="selected" value="' + data[i].id + '">' + data[i].name + '</option>'
        else
          console.log (data[i].id + ", " + value + " DIFF")
          opt = '<option value="' + data[i].id + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament').change ->
    departament_rule()

  departament_rule()
