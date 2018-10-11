$ ->

  get_step = ->
    $.getJSON '/step/' + $('#user_id').val(), (data) ->
      console.log data["step"]
      if data["step"] == 3
        location.reload()

  setInterval(get_step, 10000);
