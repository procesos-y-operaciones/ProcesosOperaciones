(function() {
  $(function() {
    var age_rule, departament_rule;
    $('.clickable-row').click(function() {
      return window.location = $(this).data('href');
    });
    departament_rule = function() {
      var value;
      value = $('#cities').val();
      return $.getJSON('/cities_list/' + $('#departament').val(), function(data) {
        $('#cities').empty();
        $('#cities').append('<option value="">SELECCIONE</option>');
        return $.each(data, function(i) {
          var opt;
          if (parseInt(value) === parseInt(data[i].id)) {
            opt = '<option selected="selected" value="' + data[i].id + '">' + data[i].name + '</option>';
          } else {
            opt = '<option value="' + data[i].id + '">' + data[i].name + '</option>';
          }
          return $('#cities').append(opt);
        });
      });
    };
    $('#departament').change(function() {
      return departament_rule();
    });
    departament_rule();
    age_rule = function() {
      var date1, date2, diffYear, timeDiff;
      date1 = new Date($('#born_date').val());
      date2 = new Date();
      timeDiff = Math.abs(date2.getTime() - date1.getTime());
      diffYear = Math.ceil(timeDiff / (365 * 24 * 60 * 60 * 1000));
      return $('#age').val(diffYear - 1);
    };
    $('#born_date').change(function() {
      return age_rule();
    });
    return age_rule();
  });

}).call(this);
