# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
StartupSector.delete_all
Sector.delete_all
Startup.delete_all

#1
startup1 = Startup.new(
name: 'Medwing',
description: 'Medwing is a healthcare start-up that provides opportunities to work in the healthcare sector.',
address: 'Rosenthaler Str. 63-64, 10119 Berlin, Germany',
website: 'www.medwing.com',
email: 'info@medwing.com'
)
startup1.save

medical_sector = Sector.new(
name: 'medical'

)
medical_sector.save

medical_startup = StartupSector.new(
startup: startup1,
sector: medical_sector

)
medical_startup.save

#2

startup2 = Startup.new(
name: 'Construyo',
description: "Construyo provides a holistic project management service", 
address: "Borsigstraße 8, 10115 Berlin, Germany",
website: 'www.construyo.de/',
email: 'info@construyo.de'
)
startup2.save

IT_sector = Sector.new(
name: 'IT'

)
IT_sector.save

IT_startup = StartupSector.new(
startup: startup2,
sector: IT_sector

)
IT_startup.save

#3
startup3 = Startup.new(
name: 'Zenjob',
description: "Zenjob is an automated staffing platform that connects large and medium-sized companies to student employees", 
address: "Stromstraße 15, 10551 Berlin, Germany",
website: 'http://wwww.zenjob.de',
email: 'service@zenjob.de.com'
)
startup3.save

HR_sector = Sector.new(
name: 'HR'

)
HR_sector.save

HR_startup = StartupSector.new(
startup: startup3,
sector: HR_sector

)
HR_startup.save


#4
startup4 = Startup.new(
name: 'GymBeam',
description: "manufacturer of more than 500 products of sport nutrition and functional food", 
address: "Gartenfelder Str. 1, 13599 Berlin, Germany",
website: 'http://wwww.gymbeam.com',
email: 'info@gymbeam.com'
)
startup4.save

sports_sector = Sector.new(
name: 'sports'

)
sports_sector.save

sports_startup = StartupSector.new(
startup: startup4,
sector: sports_sector

)
sports_startup.save


#5
startup5 = Startup.new(
name: 'MegaZebra',
description: "creator of social games for social gaming industry", 
address: "Steinsdorfstraße 2 80538 München Germany",
website: 'http://wwww.megazebra.com',
email: 'info@megazebra.com'
)
startup5.save

gaming_sector = Sector.new(
name: 'gaming'

)
gaming_sector.save

gaming_startup = StartupSector.new(
startup: startup5,
sector: gaming_sector

)
gaming_startup.save

#6

startup6 = Startup.new(
name: 'Flaregames',
description: "creator of social games for social gaming industry", 
address: "Kaiserstraße 146-148 76133 Karlsruhe Germany",
website: "https://www.flaregames.com/",
email: 'info@flaregames.com'
)
startup6.save


gaming_startup = StartupSector.new(
startup: startup6,
sector: gaming_sector

)
gaming_startup.save

#7

startup7 = Startup.new(
name: 'Sonnen',
description: "produces home energy storage systems for private households and small businesses", 
address: "Am Riedbach 1 87499 Wildpoldsried Germany",
website: "https://www.sonnen.de/",
email: 'info@sonnen.com'
)
startup7.save

environment_sector = Sector.new(
name: 'environment'

)
environment_sector.save

environment_startup = StartupSector.new(
startup: startup7,
sector: environment_sector

)
environment_startup.save

#8

startup8 = Startup.new(
name: 'Teleclinic',
description: "online emedicine platform. Users can request for a video consultation or phone call across a range of common medical topics ", 
address: "St.-Martin-Straße 61, 81669 München, Germany",
website: "https://www.teleclinic.com/",
email: 'kundenservice@teleclinic.com'
)
startup8.save

medical_sector = Sector.new(
name: 'medical'

)
medical_sector.save

medical_startup = StartupSector.new(
startup: startup8,
sector: medical_sector

)
medical_startup.save