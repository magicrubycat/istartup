class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.text :content
      t.boolean :sent
      t.references :user, null: false, foreign_key: true
      t.references :startup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
