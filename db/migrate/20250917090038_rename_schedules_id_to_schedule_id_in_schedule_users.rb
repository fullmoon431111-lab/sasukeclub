class RenameSchedulesIdToScheduleIdInScheduleUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedule_users, :schedules_id, :schedule_id
  end
end
