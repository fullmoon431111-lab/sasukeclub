class CreateSasukes < ActiveRecord::Migration[7.2]
  def change
    create_table :sasukes do |t|
      t.string :title
      t.text :about
      t.string :image
      t.string :contact

      t.timestamps
    end
  end
end
