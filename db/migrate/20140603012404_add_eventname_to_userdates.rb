class AddEventnameToUserdates < ActiveRecord::Migration
  def change
    add_column :userdates, :eventname, :string
  end
end
