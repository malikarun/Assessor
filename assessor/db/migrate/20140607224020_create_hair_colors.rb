class CreateHairColors < ActiveRecord::Migration
  def change
    create_table :hair_colors do |t|
      t.string :title

      t.timestamps
    end
  end
end
