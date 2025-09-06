class RenameCreatedAtToStartTimeInSchedules < ActiveRecord::Migration[7.2]
  def change
    rename_column :schedules, :created_at, :start_time
  end
end
