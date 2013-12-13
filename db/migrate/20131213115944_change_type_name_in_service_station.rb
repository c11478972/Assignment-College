class ChangeTypeNameInServiceStation < ActiveRecord::Migration
  def up
	rename_column :service_stations, :type, :sstype
  end

  def down
  end
end
