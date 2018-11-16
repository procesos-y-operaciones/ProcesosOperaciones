(function() {
  $(function() {
    var enable_button;
    enable_button = function() {
      var a, b;
      a = $('#goals_percent').text();
      b = $('#competencies_percent').text();
      if (a === "100%" && b === "100%") {
        return $('#submit_butt').prop("disabled", false);
      } else {
        return $('#submit_butt').prop("disabled", true);
      }
    };
    enable_button();
    $('#evaluations_goals_container').change(function() {
      var value;
      value = 0;
      $('.select-goals').map(function(i) {
        var x;
        x = $('.select-goals')[i];
        return value += parseInt($(x).find(':selected').attr('data-percent'));
      });
      $('#goals_percent').text(value + "%");
      return enable_button();
    });
    $('#evaluations_goals_container').on('cocoon:after-remove', function(e, i) {
      $('#evaluations_goals_container').trigger('change');
      return enable_button();
    });
    $('#evaluations_goals_container').trigger('change');
    $('#evaluations_competencies_container').change(function() {
      var value;
      value = 0;
      $('.select-competencies').map(function(i) {
        var x;
        x = $('.select-competencies')[i];
        return value += parseInt($(x).find(':selected').attr('data-percent'));
      });
      $('#competencies_percent').text(value + "%");
      return enable_button();
    });
    $('#evaluations_competencies_container').on('cocoon:after-remove', function(e, i) {
      $('#evaluations_competencies_container').trigger('change');
      return enable_button();
    });
    return $('#evaluations_competencies_container').trigger('change');
  });

}).call(this);
