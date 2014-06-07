class CreateHeights < ActiveRecord::Migration
  def change
    create_table :heights do |t|
      t.string :title

      t.timestamps
    end
  end
end
