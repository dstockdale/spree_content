class AddTranslationsToSubjects < ActiveRecord::Migration
  def self.up
    Spree::Subject.create_translation_table!({ body: :text }, { :migrate_data => true })
  end

  def self.down
    Spree::Subject.drop_translation_table! migrate_data: true
  end
end