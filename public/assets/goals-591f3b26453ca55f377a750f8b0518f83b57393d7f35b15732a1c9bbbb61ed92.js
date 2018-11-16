(function() {
  $(function() {
    var phases_change;
    $('.clickable-row').click(function() {
      return window.location = $(this).data('href');
    });
    phases_change = function() {
      var i, j, k, newVal, oldVal, ref, ref1;
      oldVal = parseInt($('#phases_number_hid').val()) || 0;
      newVal = parseInt($('#phases_number').val()) || 0;
      if ((newVal - oldVal) > 0) {
        for (i = j = 0, ref = newVal - oldVal - 1; 0 <= ref ? j <= ref : j >= ref; i = 0 <= ref ? ++j : --j) {
          $('#phases_butt').trigger("click");
        }
      }
      if ((newVal - oldVal) < 0) {
        $('#phases_container').empty();
        for (i = k = 0, ref1 = newVal - 1; 0 <= ref1 ? k <= ref1 : k >= ref1; i = 0 <= ref1 ? ++k : --k) {
          $('#phases_butt').trigger("click");
        }
      }
      return $('#phases_number_hid').val(newVal);
    };
    $('#phases_number').change(function() {
      return phases_change();
    });
    return phases_change();
  });

}).call(this);
