class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :video_url
      t.string :description
    end
  end
end
