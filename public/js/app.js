$(document).ready(function() {
  // Enable Bootstrap's carousel
  $('.carousel').carousel();

  // Enable Bootstrap's modal to load remote content via Ajax
  $("a[data-toggle=modal]").click(function() {
    var target = $(this).attr('data-target');
    var url = $(this).attr('href');
    return $(target).load(url);
  });
  $('.modal').on('hide', function () {
    $(this).empty();
  });
});
