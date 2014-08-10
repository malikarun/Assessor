class CreateTopic < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string  :title
      t.text    :description
      t.integer :user_id
      t.integer :popularity
      t.boolean :sticky
      t.boolean :locked
      t.integer :comments_count, default: 0

      t.timestamps
    end
  end
end
