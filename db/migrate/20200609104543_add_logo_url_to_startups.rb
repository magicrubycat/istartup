class AddLogoUrlToStartups < ActiveRecord::Migration[6.0]
  def change
    add_column :startups, :logo_url, :string
  end
end
