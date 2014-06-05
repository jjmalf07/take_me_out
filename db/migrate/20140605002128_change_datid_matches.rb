class ChangeDatidMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.rename :date_id, :userdate_id
     end
  end
end
