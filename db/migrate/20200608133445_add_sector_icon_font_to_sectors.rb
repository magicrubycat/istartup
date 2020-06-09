class AddSectorIconFontToSectors < ActiveRecord::Migration[6.0]
  def change
    add_column :sectors, :sector_icon_font, :string
  end
end
