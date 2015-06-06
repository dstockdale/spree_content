class Spree::Subject < ActiveRecord::Base
  translates :body
  has_many :arrangements, class_name: "Spree::Arrangement"
end
