class CreateRaceentries < ActiveRecord::Migration
  def change
    create_table :raceentries do |t|
      t.string :name
      t.string :compname
      t.string :vehname
      t.date :dor
      t.string :postion

      t.timestamps
    end
  end
end
