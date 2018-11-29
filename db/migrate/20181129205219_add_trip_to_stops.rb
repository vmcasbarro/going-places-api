class AddTripToStops < ActiveRecord::Migration[5.2]
  def change
    add_reference :stops, :trip, foreign_key: true
  end
end
