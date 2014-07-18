class AddSnapshotToUser < ActiveRecord::Migration
  def change
    add_column :users, :snapshot, :string
  end
end
