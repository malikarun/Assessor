class CreateEthinicities < ActiveRecord::Migration
  def change
    create_table :ethinicities do |t|
      t.string :title

      t.timestamps
    end
  end
end
