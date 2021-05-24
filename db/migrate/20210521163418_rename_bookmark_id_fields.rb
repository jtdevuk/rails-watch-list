class RenameBookmarkIdFields < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookmarks, :movies, index: true
    remove_reference :bookmarks, :lists, index: true
    add_reference :bookmarks, :movie, foreign_key: true
    add_reference :bookmarks, :list, foreign_key: true
  end
end
