class CreateScheduleUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :schedule_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :schedules, null: false, foreign_key: true

      t.timestamps
    end
  end
end
