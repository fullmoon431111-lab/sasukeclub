class CreateSchedules < ActiveRecord::Migration[7.2]
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :title
      t.text :about
      t.integer :user_id

      t.timestamps
    end
  end
end
