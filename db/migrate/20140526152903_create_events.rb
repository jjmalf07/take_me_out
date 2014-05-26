class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.float :lng
      t.float :lat

      t.timestamps

    end
  end
end
