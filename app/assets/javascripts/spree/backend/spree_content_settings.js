var metaTranslations = {
  fr: "fr-FR",
  es: "es-ES",
  de: "de-DE",
  th: "th-TH",
  pl: "pl-PL"
};

$(document).ready(function() {
  var locale = $('html').attr('lang');
  var translation = metaTranslations[locale];
  $('.summernote').summernote({
    lang: translation,
    height: 400
  });
});