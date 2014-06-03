class CreateUserdates < ActiveRecord::Migration
  def change
    create_table :userdates do |t|
      t.string :interest
      t.string :preference
      t.string :age_range
      t.integer :user_id
      t.integer :event_id
      t.integer :price
      t.integer :number_tickets
      t.datetime :date_time
      t.text :details

      t.timestamps

    end
  end
end
