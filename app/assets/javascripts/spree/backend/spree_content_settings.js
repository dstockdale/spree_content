var metaTranslations = {
  "ca": "ca-ES",
  "cs": "cs-CZ",
  "da": "da-DK",
  "de": "de-DE",
  "es": "es-ES",
  "fa": "fa-FA",
  "fi": "fi-FI",
  "fr": "fr-FR",
  "id": "id-ID",
  "it": "it-IT",
  "ja": "ja-JP",
  "ko": "ko-KR",
  "nb": "nb-NO",
  "nl": "nl-NL",
  "pl": "pl-PL",
  "pt": "pt-PT",
  "ro": "ro-RO",
  "ru": "ru-RU",
  "sk": "sk-SK",
  "sl-SI": "sl-SI",
  "sv": "sv-SE",
  "th": "th-TH",
  "uk": "uk-UA",
  "vi": "vi-VN",
  "zh-CN": "zh-CN",
  "zh-TW": "zh-TW"
};

$(document).ready(function() {
  var locale = $('html').attr('lang');
  var translation = metaTranslations[locale];
  $('.summernote').summernote({
    lang: translation,
    height: 400
  });
});