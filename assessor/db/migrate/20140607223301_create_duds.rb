class CreateDuds < ActiveRecord::Migration
  def change
    create_table :duds do |t|
      t.string :name
      t.integer :gender_id
      t.integer :age_id
      t.integer :color_id
      t.integer :hair_color_id
      t.integer :height_id
      t.integer :eye_color_id
      t.integer :body_type_id
      t.integer :ethinicity_id
      t.text :description

      t.timestamps
    end
  end
end
