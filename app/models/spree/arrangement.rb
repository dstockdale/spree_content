class Spree::Arrangement < ActiveRecord::Base
  translates :slug, :description, :keywords, :title
  belongs_to :subject, class_name: "Spree::Subject", foreign_key: :subject_id

  scope :visible, -> { where(visible: true) }
end
