class ChangeDorToTypeTimeRaceentry < ActiveRecord::Migration
  def up
	change_column :raceentries, :dor, :time
  end

  def down
  end
end
