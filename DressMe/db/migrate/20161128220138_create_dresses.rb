class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
    	t.attachment :file
    	t.string :color
    	t.string :style

      t.timestamps null: false
    end
  end
end
