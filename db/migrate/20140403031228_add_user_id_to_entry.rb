class AddUserIdToEntry < ActiveRecord::Migration
  def change
    change_table :entries do |t|
      t.references :user
    end
  end
end
