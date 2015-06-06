class CreateSpreeSubjects < ActiveRecord::Migration
  def change
    create_table :spree_subjects do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
