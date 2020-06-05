# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'csv'

StartupSector.delete_all
Sector.delete_all
Startup.delete_all

csv_options = { headers: :first_row, header_converters: :symbol }
CSV.foreach(Rails.root.join('./db/data/startups.csv'), csv_options) do |row|
  startup = Startup.create(
    name: row[:name],
    description: row[:description],
    address: row[:address],
    website: row[:website],
    email: row[:email]
  )
  sector = Sector.create(
  name: row[:sector]
  )
  StartupSector.create(
  startup_id: startup.id,
  sector_id: sector.id
  )
 end