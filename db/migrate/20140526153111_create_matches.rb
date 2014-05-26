class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :date_id
      t.integer :user_id
      t.boolean :accepted

      t.timestamps

    end
  end
end
