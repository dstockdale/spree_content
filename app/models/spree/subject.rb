class Spree::Subject < ActiveRecord::Base
  translates :body
  belongs_to :arrangement, foreign_key: :subject_id
end
