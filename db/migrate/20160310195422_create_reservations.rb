class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.datetime :end_date, :start_date
      t.integer :price
      t.integer :total

      t.timestamps null: false
    end
  end
end
