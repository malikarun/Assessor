class CreateEyeColors < ActiveRecord::Migration
  def change
    create_table :eye_colors do |t|
      t.string :title

      t.timestamps
    end
  end
end
