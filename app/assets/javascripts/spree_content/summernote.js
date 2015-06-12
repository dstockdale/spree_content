(function() {
  $(document).ready(function() {

    if (typeof(Spree) !== "undefined" && typeof(Spree.SpreeSummernote) !== "undefined") {

      $(".panel.body textarea, #arrangement_body").summernote({
        lang: Spree.SpreeSummernote.translatedLocale(),
        toolbar: [           
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['font', ['strikethrough', 'superscript', 'subscript']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['insert', ['link', 'picture']]
        ]
      });

    }
  });
  
})();