class RenameHandicapLevelIdColumnToCases < ActiveRecord::Migration[6.0]
  def change
    rename_column :cases, :handicap_level_id, :handicap_level
  end
end
