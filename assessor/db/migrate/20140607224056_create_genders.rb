class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :title

      t.timestamps
    end
  end
end
