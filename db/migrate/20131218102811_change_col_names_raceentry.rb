class ChangeColNamesRaceentry < ActiveRecord::Migration
  def up
	rename_column :raceentries, :name, :customer_id
	rename_column :raceentries, :compname, :race_id
	rename_column :raceentries, :vehname, :vehicle_id
  end

  def down
  end
end
