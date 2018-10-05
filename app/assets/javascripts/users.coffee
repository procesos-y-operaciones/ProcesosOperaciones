$ ->
  $('.clickable-row').click ->
    window.location = $(this).data('href')

  departament_rule = ->
    value = $('#cities').val()
    $.getJSON '/cities_list/' + $('#departament').val(), (data) ->
      $('#cities').empty()
      $('#cities').append '<option value="">SELECCIONE</option>'
      $.each data, (i) ->
        if parseInt(value) == parseInt(data[i].id)
          opt = '<option selected="selected" value="' + data[i].id + '">' + data[i].name + '</option>'
        else
          opt = '<option value="' + data[i].id + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament').change ->
    departament_rule()

  departament_rule()

  age_rule = ->
    date1 = new Date( $('#born_date').val() )
    date2 = new Date()
    timeDiff = Math.abs(date2.getTime() - date1.getTime());
    diffYear = Math.ceil(timeDiff / (365 * 24 * 60 * 60 * 1000));
    $('#age').val( diffYear - 1)

  $('#born_date').change ->
    age_rule()

  age_rule()
