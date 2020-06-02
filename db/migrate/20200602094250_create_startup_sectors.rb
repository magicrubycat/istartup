class CreateStartupSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :startup_sectors do |t|
      t.references :sector, null: false, foreign_key: true
      t.references :startup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
