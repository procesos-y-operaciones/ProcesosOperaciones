$ ->

  get_step = ->
    $.getJSON '/step/' + $('#evaluation_id').val(), (data) ->
      console.log data["step"]
      if data["step"] == 5
        location.reload()

  setInterval(get_step, 10000);
