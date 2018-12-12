$ ->

  $('.reached').each (i) =>
    reached = $('.reached')[i]
    proposed = $('.proposed')[i]
    expiration = $('.expiration')[i]

    if(new Date(expiration.value) < new Date())
      reached.readOnly = true

    if(reached.value != "")
      $('#step').val(7)
