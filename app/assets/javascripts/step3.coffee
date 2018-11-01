$ ->

  enable_button = ->
    a = $('#goals_percent').text()
    b = $('#competencies_percent').text()
    if a == "100%" && b == "100%"
      $('#submit_butt').prop("disabled",false)
    else
      $('#submit_butt').prop("disabled",true)

  enable_button()


  $('#evaluations_goals_container').change ->
    value = 0
    $('.select-goals').map (i) ->
      x = $('.select-goals')[i]
      value += parseInt($(x).find(':selected').attr('data-percent'))
    $('#goals_percent').text(value + "%")
    enable_button()

  $('#evaluations_goals_container').on('cocoon:after-remove', (e, i) ->
    $('#evaluations_goals_container').trigger('change')
    enable_button()
  )

  $('#evaluations_goals_container').trigger('change')

  $('#evaluations_competencies_container').change ->
    value = 0
    $('.select-competencies').map (i) ->
      x = $('.select-competencies')[i]
      value += parseInt($(x).find(':selected').attr('data-percent'))
    $('#competencies_percent').text(value + "%")
    enable_button()

  $('#evaluations_competencies_container').on('cocoon:after-remove', (e, i) ->
    $('#evaluations_competencies_container').trigger('change')
    enable_button()
  )

  $('#evaluations_competencies_container').trigger('change')
