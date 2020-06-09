# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'json'

def nil_prevention(string)
  return "" if string.nil?
  string
end


def photo_nil_prevention(string)
  return "http://formtyp.de/wp-content/uploads/2015/08/UNAVAILABLE-DEFAULT-USER-01.jpg" if string.nil?
  string
end

Application.delete_all
StartupSector.delete_all
Sector.delete_all
Startup.delete_all
file = File.read(Rails.root.join('./db/data/startups.json'))
json_hash = JSON.parse(file)

json_hash["startups"].each do |startup|

  puts " Creating the startup with name: #{nil_prevention(startup[0])}"
  startup_creation = Startup.create(
    name: nil_prevention(startup[0]),
    description: nil_prevention(startup[1]["description"]),
    address: nil_prevention(startup[1]["address"]),
    website: nil_prevention(startup[1]["website"]),
    email: nil_prevention(startup[1]["email"]),
    employees: nil_prevention(startup[1]["employees"]),
    logo_url: photo_nil_prevention(startup[1]["logo"])
  )
  p startup_creation

  puts "Creating the Sector"

  sector_name = nil_prevention(startup[1]["sector"])
  sector = Sector.find_by(name: sector_name)
  if sector.nil?
    sector = Sector.create(
      name: sector_name,
      sector_icon_font: nil_prevention(startup[1]["sector_icon_font"])
    )
  end


  puts "Creating the StartupSector"

  StartupSector.create(
    startup_id: startup_creation.id,
    sector_id: sector.id
  )
end
