class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.string :title

      t.timestamps
    end
  end
end
