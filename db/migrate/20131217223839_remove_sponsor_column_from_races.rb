class RemoveSponsorColumnFromRaces < ActiveRecord::Migration
  def up
	remove_column :races, :sponsor
  end

  def down
  end
end
