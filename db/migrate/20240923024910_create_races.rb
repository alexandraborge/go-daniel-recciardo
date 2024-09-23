class CreateRaces < ActiveRecord::Migration[7.2]
  def change
    create_table :races do |t|
      t.integer :circuit_key
      t.string :circuit_short_name
      t.integer :country_key
      t.string :country_name
      t.string :location
      t.datetime :start_date
      t.integer :meeting_key
      t.string :meeting_name
      t.string :meeting_official_name
      t.integer :year

      t.timestamps
    end
  end
end
