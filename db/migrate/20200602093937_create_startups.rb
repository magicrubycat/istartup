class CreateStartups < ActiveRecord::Migration[6.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
