(function() {
  $(function() {
    return $('.clickable-row').click(function() {
      return window.location = $(this).data('href');
    });
  });

}).call(this);
