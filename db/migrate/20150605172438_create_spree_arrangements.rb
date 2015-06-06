class CreateSpreeArrangements < ActiveRecord::Migration
  def change
    create_table :spree_arrangements do |t|
      t.string :slug
      t.integer :subject_id
      t.string :context
      t.string :ancestry
      t.integer :position
      t.string :description
      t.string :keywords
      t.string :title
      t.string :target
      t.boolean :visible, default: true

      t.timestamps null: false
    end
    add_index :spree_arrangements, :slug
    add_index :spree_arrangements, :ancestry
  end
end
