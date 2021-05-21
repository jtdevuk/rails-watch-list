class AddColumnsToBookmarks < ActiveRecord::Migration[6.0]
  create_table :products do |t|
    t.string :comment
    t.references :movies, foreign_key: true
    t.references :lists, foreign_key: true
  end
end
