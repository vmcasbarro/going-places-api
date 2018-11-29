class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
