$(document).ready(function() {
  var locale = $('html').attr('lang');
  $('.summernote').summernote({
    lang: locale,
    height: 400
  });
});