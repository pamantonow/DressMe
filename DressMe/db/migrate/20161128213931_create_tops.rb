class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
    	t.attachment :file
    	t.string :color
    	t.string :style

      t.timestamps null: false
    end
  end
end
