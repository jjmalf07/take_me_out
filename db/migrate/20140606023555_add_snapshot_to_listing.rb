class AddSnapshotToListing < ActiveRecord::Migration
  def change
    add_column :listings, :snapshot, :string
  end
end
