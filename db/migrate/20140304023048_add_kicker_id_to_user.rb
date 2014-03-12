class AddKickerIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :kicker_id, :int
  end
end
