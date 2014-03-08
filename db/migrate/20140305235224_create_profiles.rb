class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.text :bio
      t.string :avatar
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
