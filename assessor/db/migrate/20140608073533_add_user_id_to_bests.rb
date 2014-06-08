class AddUserIdToBests < ActiveRecord::Migration
  def change
    add_column :bests, :user_id, :int
    add_column :duds, :user_id, :int
  end
end
