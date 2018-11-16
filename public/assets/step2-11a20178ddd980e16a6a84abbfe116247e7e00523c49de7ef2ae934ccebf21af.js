(function() {
  $(function() {
    var get_step;
    get_step = function() {
      return $.getJSON('/step/' + $('#evaluation_id').val(), function(data) {
        console.log(data["step"]);
        if (data["step"] === 3) {
          return location.reload();
        }
      });
    };
    return setInterval(get_step, 10000);
  });

}).call(this);
