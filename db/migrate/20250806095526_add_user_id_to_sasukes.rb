class AddUserIdToSasukes < ActiveRecord::Migration[7.2]
  def change
    add_column :sasukes, :user_id, :integer
  end
end
