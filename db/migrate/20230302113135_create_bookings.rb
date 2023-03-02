class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.boolean :availeble

      t.timestamps
    end
  end
end
