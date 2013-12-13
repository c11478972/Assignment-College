class AddAddressToRaces < ActiveRecord::Migration
  def change
    add_column :races, :address, :string

  end
end
