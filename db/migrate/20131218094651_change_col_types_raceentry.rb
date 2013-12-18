class ChangeColTypesRaceentry < ActiveRecord::Migration
  def self.up
  change_column :raceentries, :name, :integer
  change_column :raceentries, :compname, :integer
  change_column :raceentries, :vehname, :integer
  end

  def self.down
  end
end
