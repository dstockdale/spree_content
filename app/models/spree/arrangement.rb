class Spree::Arrangement < ActiveRecord::Base
  translates :slug, :description, :keywords, :title
  has_one :subject, class_name: "Spree::Subject", foreign_key: :subject_id
end
