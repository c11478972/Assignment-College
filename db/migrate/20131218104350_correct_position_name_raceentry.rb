class CorrectPositionNameRaceentry < ActiveRecord::Migration
  def up
	rename_column :raceentries, :postion, :position
  end

  def down
  end
end
