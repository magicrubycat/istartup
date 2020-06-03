# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Startup.delete_all
Sector.delete_all
StartupSector.delete_all

#1
startup1 = Startup.new(
name: 'iMops',
description: 'Cool mops that clean the house and pump water from wells'
address: 'Rudi-Dutschke-Straße 26, Berlin 10119, Germany'
website: 'www.imops.com'
email: 'ceo@imops.com'
)
startup1.save

cleaning_sector = Sector.new(
name: 'cleaning'

)
cleaning_sector.save

cleaning_startup = StartupSector.new(
startup: start1
sector: cleaning_sector

)
cleaning_startup.save

#2

startup1 = Startup.new(
name: 'iBox',
description: "really cool boxing clubs that beat you till you're down" 
address: 
website:
email:
)
startup1.save

sports_sector = Sector.new(
name: 'sports'

)
sports_sector.save

sports_startup = StartupSector.new(
startup: start1
sector: sports_sector

)
sports_startup.save