class AddEntryIdToSign < ActiveRecord::Migration
  def change
    change_table :signs do |t|
      t.references :entry
    end
  end
end
