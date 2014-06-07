class CreateBodyTypes < ActiveRecord::Migration
  def change
    create_table :body_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
