class ChangeProducts < ActiveRecord::Migration[6.0]
  def change
    rename_table :products, :bookmarks
  end
end
