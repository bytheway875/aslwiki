class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
    end
  end
end
