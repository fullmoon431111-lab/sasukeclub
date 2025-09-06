class RenameSrartTimeToCreatedAtInSasukes < ActiveRecord::Migration[7.2]
  def change
    rename_column :sasukes, :start_time, :created_at
  end
end
