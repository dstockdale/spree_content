module SpreeContent
  module ArrangementsHelper

    def select_arrangement_locale
      select_tag('arrangement[locale]', options_for_select(available_locales_options), { class: "form-control" })
    end

  end
end