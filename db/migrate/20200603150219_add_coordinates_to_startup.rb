class AddCoordinatesToStartup < ActiveRecord::Migration[6.0]
  def change
    add_column :startups, :latitude, :float
    add_column :startups, :longitude, :float
  end
end
