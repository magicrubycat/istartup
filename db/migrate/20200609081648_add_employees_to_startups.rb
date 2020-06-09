class AddEmployeesToStartups < ActiveRecord::Migration[6.0]
  def change
     add_column :startups, :employees, :string
  end
end
