class CreateBottoms < ActiveRecord::Migration
  def change
    create_table :bottoms do |t|
    	t.attachment :file
    	t.string :color
    	t.string :style

      t.timestamps null: false
    end
  end
end
