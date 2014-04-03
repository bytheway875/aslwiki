class AddUserIdToSign < ActiveRecord::Migration
  def change
     change_table :signs do |t|
      t.references :user
    end
  end
end
