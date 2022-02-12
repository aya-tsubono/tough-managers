class ChangeDataCaseToHandicapLevelId < ActiveRecord::Migration[6.0]
  def change
    change_column :cases, :handicap_level_id, :string
  end
end
