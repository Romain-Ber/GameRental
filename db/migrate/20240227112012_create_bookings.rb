class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :date_begin, null: false, default: DateTime.now
      t.date :date_end
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
