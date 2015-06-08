class Spree::Subject < ActiveRecord::Base
  has_many :arrangements, class_name: "Spree::Arrangement"
  translates :body, fallbacks_for_empty_translations: true
  include SpreeI18n::Translatable
end