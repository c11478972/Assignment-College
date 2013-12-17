class ChangeLocationToLocationIdInRaces < ActiveRecord::Migration
  def up
	rename_column :races, :location, :location_id
  end

  def down
  end
end
