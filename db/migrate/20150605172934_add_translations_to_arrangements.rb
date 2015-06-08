class AddTranslationsToArrangements < ActiveRecord::Migration
  def self.up
    Spree::Arrangement.create_translation_table!({
      slug: :string,
      description: :string,
      keywords: :string,
      title: :string,
      body: :text
    }, { :migrate_data => true })
  end

  def self.down
    Spree::Arrangement.drop_translation_table! migrate_data: true
  end
end