
puts "Destroy Bosses, Level Ranges and Loop Patterns"

Boss.destroy_all
LevelRange.destroy_all
LoopPattern.destroy_all
Message.destroy_all

puts "Create first Message..."

First_message   = Message.create(content: "First Message")

puts "Creating Level ranges..."

range_6to20     = LevelRange.create(number_of_bosses: 4, range:"6 à 20")
range_21to35    = LevelRange.create(number_of_bosses: 3, range:"21 à 35")
range_36to50    = LevelRange.create(number_of_bosses: 4, range:"36 à 50")
range_51to65    = LevelRange.create(number_of_bosses: 7, range:"51 à 65")
range_66to80    = LevelRange.create(number_of_bosses: 8, range:"66 à 80")
range_81to95    = LevelRange.create(number_of_bosses: 8, range:"81 à 95")
range_96to110   = LevelRange.create(number_of_bosses: 6, range:"96 à 110")
range_111to125  = LevelRange.create(number_of_bosses: 8, range:"111 à 125")
range_126to140  = LevelRange.create(number_of_bosses: 8, range:"126 à 140")
range_141to155  = LevelRange.create(number_of_bosses: 7, range:"141 à 155")
range_156to170  = LevelRange.create(number_of_bosses: 7, range:"156 à 170")
range_171to185  = LevelRange.create(number_of_bosses: 6, range:"171 à 185")
range_186to200  = LevelRange.create(number_of_bosses: 8, range:"186 à 200")
range_201to215  = LevelRange.create(number_of_bosses: 7, range:"201 à 215")

puts "Creating Loop patterns..."

loop_6to20     = LoopPattern.create(level_range: range_6to20)
loop_21to35    = LoopPattern.create(level_range: range_21to35)
loop_36to50    = LoopPattern.create(level_range: range_36to50)
loop_51to65    = LoopPattern.create(level_range: range_51to65)
loop_66to80    = LoopPattern.create(level_range: range_66to80)
loop_81to95    = LoopPattern.create(level_range: range_81to95)
loop_96to110   = LoopPattern.create(level_range: range_96to110)
loop_111to125  = LoopPattern.create(level_range: range_111to125)
loop_126to140  = LoopPattern.create(level_range: range_126to140)
loop_141to155  = LoopPattern.create(level_range: range_141to155)
loop_156to170  = LoopPattern.create(level_range: range_156to170)
loop_171to185  = LoopPattern.create(level_range: range_171to185)
loop_186to200  = LoopPattern.create(level_range: range_186to200)
loop_201to215  = LoopPattern.create(level_range: range_201to215)

puts "Creating all Bosses !!!"
puts "Boss from 6 to 20..."
Boss.create(loop_pattern: loop_6to20, name: "Maine Cooyne",   location: "Mère Michou",            first_encounter: 5, second_encounter: 9, third_encounter: 12)
Boss.create(loop_pattern: loop_6to20, name: "Shin Larve",     location: "Larventura",             first_encounter: 1, second_encounter: 4, third_encounter: 8)
Boss.create(loop_pattern: loop_6to20, name: "Bouftou Royal",  location: "Pâturage des Bouftous",  first_encounter: 2, second_encounter: 7, third_encounter: 11)
Boss.create(loop_pattern: loop_6to20, name: "Tofu Royal",     location: "Tofulailler",            first_encounter: 3, second_encounter: 6, third_encounter: 10)
puts "Boss from 21 to 35..."
Boss.create(loop_pattern: loop_21to35, name: "Morfor",        location: "Caveau Relevé",        first_encounter: 1, second_encounter: 4, third_encounter: 6)
Boss.create(loop_pattern: loop_21to35, name: "Abraknelle",    location: "Donjon des Abraknes",  first_encounter: 3, second_encounter: 7, third_encounter: 9)
Boss.create(loop_pattern: loop_21to35, name: "Piou Royal",    location: "Piou Lahoupe",         first_encounter: 2, second_encounter: 5, third_encounter: 8)
puts "Boss from 36 to 50..."
Boss.create(loop_pattern: loop_36to50, name: "Moogrr Royal",        location: "Pâpaturage Royal", first_encounter: 3, second_encounter: 7, third_encounter: 12)
Boss.create(loop_pattern: loop_36to50, name: "Craqueleur Royal",    location: "Montagne Adezieu", first_encounter: 4, second_encounter: 6, third_encounter: 9)
Boss.create(loop_pattern: loop_36to50, name: "Plante Carnivore",    location: "Champs Pourchan",  first_encounter: 1, second_encounter: 5, third_encounter: 11)
Boss.create(loop_pattern: loop_36to50, name: "Agonie la Déterrée",  location: "Tour Minérale",    first_encounter: 2, second_encounter: 8, third_encounter: 10)
puts "Boss from 51 to 65..."
Boss.create(loop_pattern: loop_51to65, name: "Capitaine de la Perelouze Noire", location: "Perlouze Noire",   first_encounter: 3, second_encounter: 12, third_encounter: 15)
Boss.create(loop_pattern: loop_51to65, name: "Grand Bouftou Sauvage",           location: "Antre Oubliée",    first_encounter: 6, second_encounter: 9, third_encounter: 18)
Boss.create(loop_pattern: loop_51to65, name: "Throll",                          location: "Donjon Bwork",     first_encounter: 1, second_encounter: 8, third_encounter: 16)
Boss.create(loop_pattern: loop_51to65, name: "Royal Skouale",                   location: "Skouale Sèche",    first_encounter: 4, second_encounter: 11, third_encounter: 19)
Boss.create(loop_pattern: loop_51to65, name: "Kralaboss",                       location: "Donjon Mollusky",  first_encounter: 2, second_encounter: 13, third_encounter: 17)
Boss.create(loop_pattern: loop_51to65, name: "Grokokolantha",                   location: "Kokokolantha",     first_encounter: 10, second_encounter: 14, third_encounter: 21)
Boss.create(loop_pattern: loop_51to65, name: "Cwabe Royal",                     location: "Château de Cwabe", first_encounter: 5, second_encounter: 7, third_encounter: 20)
puts "Boss from 66 to 80..."
Boss.create(loop_pattern: loop_66to80, name: "Ratachouille",          location: "Ratacombes",             first_encounter: 4, second_encounter: 18, third_encounter: 23)
Boss.create(loop_pattern: loop_66to80, name: "Grand Orrok",           location: "Temple du Grand Orrok",  first_encounter: 2, second_encounter: 14, third_encounter: 15)
Boss.create(loop_pattern: loop_66to80, name: "Korbot K-800",          location: "Corbeau-Cave",           first_encounter: 5, second_encounter: 10, third_encounter: 21)
Boss.create(loop_pattern: loop_66to80, name: "Hongrue, Haute Truche", location: "Truchière Abandonnée",   first_encounter: 1, second_encounter: 8, third_encounter: 17)
Boss.create(loop_pattern: loop_66to80, name: "Gligli Royal",          location: "Domaine du Petit Groin", first_encounter: 6, second_encounter: 11, third_encounter: 20)
Boss.create(loop_pattern: loop_66to80, name: "Tsar Tsu Tsu",          location: "Palais du Tsu",          first_encounter: 7, second_encounter: 12, third_encounter: 24)
Boss.create(loop_pattern: loop_66to80, name: "Lune Géante",           location: "Donjon Mulou",           first_encounter: 3, second_encounter: 16, third_encounter: 19)
Boss.create(loop_pattern: loop_66to80, name: "Veuve Noire",           location: "Donjon Arakne",          first_encounter: 9, second_encounter: 13, third_encounter: 22)
puts "Boss from 81 to 95..."
Boss.create(loop_pattern: loop_81to95, name: "Nonne",                     location: "Sliptorium",             first_encounter: 7, second_encounter: 9, third_encounter: 20)
Boss.create(loop_pattern: loop_81to95, name: "Viktoria-France Kenstein",  location: "Le Misolé",              first_encounter: 1, second_encounter: 10, third_encounter: 17)
Boss.create(loop_pattern: loop_81to95, name: "Vampyro",                   location: "Château de Wagnar",      first_encounter: 2, second_encounter: 8, third_encounter: 23)
Boss.create(loop_pattern: loop_81to95, name: "El Pochito",                location: "Trool Academy",          first_encounter: 6, second_encounter: 14, third_encounter: 22)
Boss.create(loop_pattern: loop_81to95, name: "Bilbymoule Nacrée",         location: "Le Hammamamoule",        first_encounter: 4, second_encounter: 12, third_encounter: 19)
Boss.create(loop_pattern: loop_81to95, name: "Reine Slek",                location: "Caverne des Slekymoses", first_encounter: 3, second_encounter: 13, third_encounter: 18)
Boss.create(loop_pattern: loop_81to95, name: "Scarador",                  location: "Scarrière Abandonnée",   first_encounter: 11, second_encounter: 16, third_encounter: 24)
Boss.create(loop_pattern: loop_81to95, name: "Chaferfu, le Roi Chafer",   location: "Nécropoil de Morbax",    first_encounter: 5, second_encounter: 15, third_encounter: 21)
puts "Boss from 96 to 110..."
Boss.create(loop_pattern: loop_96to110, name: "Bilbyqueen",       location: "L'Arène Dansante",         first_encounter: 6, second_encounter: 12, third_encounter: 16)
Boss.create(loop_pattern: loop_96to110, name: "Lady Glagla",      location: "Glaglacier Cornu",         first_encounter: 9, second_encounter: 14, third_encounter: 17)
Boss.create(loop_pattern: loop_96to110, name: "Yech'Ti'Wawa",     location: "Niche du Yech'Ti'Wawa",    first_encounter: 4, second_encounter: 8, third_encounter: 11)
Boss.create(loop_pattern: loop_96to110, name: "Empereur Gelax",   location: "Donjon Gelée",             first_encounter: 2, second_encounter: 13, third_encounter: 18)
Boss.create(loop_pattern: loop_96to110, name: "Chapo Magik",      location: "Repaire des Magik Riktus", first_encounter: 1, second_encounter: 5, third_encounter: 15)
Boss.create(loop_pattern: loop_96to110, name: "Maitre Chuchoku",  location: "Chuchobase",               first_encounter: 3, second_encounter: 7, third_encounter: 10)
puts "Boss from 111 to 125..."
Boss.create(loop_pattern: loop_111to125, name: "Hagën-Glass",             location: "Pot d'Hagën-Glass",        first_encounter: 2, second_encounter: 13, third_encounter: 22)
Boss.create(loop_pattern: loop_111to125, name: "Kya, Missiz Frizz",       location: "L'Aile de l'Ambassadrice", first_encounter: 5, second_encounter: 9, third_encounter: 17)
Boss.create(loop_pattern: loop_111to125, name: "Sylargh",                 location: "Tour Gelée",               first_encounter: 3, second_encounter: 16, third_encounter: 24)
Boss.create(loop_pattern: loop_111to125, name: "Piktus",                  location: "Donjon Cacterre",          first_encounter: 6, second_encounter: 14, third_encounter: 21)
Boss.create(loop_pattern: loop_111to125, name: "Spectrex le Tourmenteur", location: "Fosse du Tourmenteur",     first_encounter: 7, second_encounter: 12, third_encounter: 20)
Boss.create(loop_pattern: loop_111to125, name: "Smarillion",              location: "Caverne Smarrante",        first_encounter: 1, second_encounter: 10, third_encounter: 23)
Boss.create(loop_pattern: loop_111to125, name: "Flaque Royale",           location: "Donjon Flaqueux",          first_encounter: 4, second_encounter: 11, third_encounter: 18)
Boss.create(loop_pattern: loop_111to125, name: "Zespadon Noir",           location: "la Pichine",               first_encounter: 8, second_encounter: 15, third_encounter: 19)
puts "Boss from 126 to 140..."
Boss.create(loop_pattern: loop_126to140, name: "Empeleul Lenald",     location: "Palais Lenald",        first_encounter: 12, second_encounter: 15, third_encounter: 22)
Boss.create(loop_pattern: loop_126to140, name: "Emiw Black Wabbit",   location: "Donjon Black Wabbit",  first_encounter: 6, second_encounter: 17, third_encounter: 24)
Boss.create(loop_pattern: loop_126to140, name: "Gwand Viziw Wabbit",  location: "Donjon Wabbit",        first_encounter: 3, second_encounter: 8, third_encounter: 19)
Boss.create(loop_pattern: loop_126to140, name: "Mihmol l'Empaleur",   location: "Sanctuaire de Mihmol", first_encounter: 5, second_encounter: 13, third_encounter: 23)
Boss.create(loop_pattern: loop_126to140, name: "Telob le Champmane",  location: "Donjon Noirespore",    first_encounter: 7, second_encounter: 11, third_encounter: 21)
Boss.create(loop_pattern: loop_126to140, name: "Vilenya",             location: "la Fac Occultée",      first_encounter: 1, second_encounter: 9, third_encounter: 16)
Boss.create(loop_pattern: loop_126to140, name: "Fripon",              location: "Donjon Phorreur",      first_encounter: 2, second_encounter: 10, third_encounter: 18)
Boss.create(loop_pattern: loop_126to140, name: "Chêne Mou",           location: "Donjon Abraknyde",     first_encounter: 4, second_encounter: 14, third_encounter: 20)
puts "Boss from 141 to 155..."
Boss.create(loop_pattern: loop_141to155, name: "Grand Prêtresse Sydonia",     location: "le Vignoble Ignoble",            first_encounter: 5, second_encounter: 12, third_encounter: 21)
Boss.create(loop_pattern: loop_141to155, name: "Wa Wabbit",                   location: "Château du Wa",                  first_encounter: 6, second_encounter: 10, third_encounter: 18)
Boss.create(loop_pattern: loop_141to155, name: "Gwand Wabbit GM",             location: "Wesewve de Cawottes Abandonnée", first_encounter: 3, second_encounter: 11, third_encounter: 20)
Boss.create(loop_pattern: loop_141to155, name: "Venâme le Mangelombre",       location: "Donjon Srambad",                 first_encounter: 2, second_encounter: 9, third_encounter: 17)
Boss.create(loop_pattern: loop_141to155, name: "Jamall'Auneth le Porte-clés", location: "Donjon Enutrosor",               first_encounter: 8, second_encounter: 13, third_encounter: 15)
Boss.create(loop_pattern: loop_141to155, name: "Blopgang Amadeus Blopzart",   location: "Blopéra",                        first_encounter: 4, second_encounter: 14, third_encounter: 19)
Boss.create(loop_pattern: loop_141to155, name: "Bulbrute",                    location: "Source du Mal",                  first_encounter: 1, second_encounter: 7, third_encounter: 16)
puts "Boss from 156 to 170..."
Boss.create(loop_pattern: loop_156to170, name: "Vertox l'Intemporel",       location: "Donjon Méka",          first_encounter: 9, second_encounter: 15, third_encounter: 20)
Boss.create(loop_pattern: loop_156to170, name: "Raipiode l'Infréquençable", location: "Donjon E-Bou",         first_encounter: 1, second_encounter: 6, third_encounter: 11)
Boss.create(loop_pattern: loop_156to170, name: "Kali",                      location: "Repaire de Kali",      first_encounter: 3, second_encounter: 8, third_encounter: 17)
Boss.create(loop_pattern: loop_156to170, name: "Le Riktus Masqué",          location: "Donjon Riktus Elite",  first_encounter: 7, second_encounter: 12, third_encounter: 16)
Boss.create(loop_pattern: loop_156to170, name: "Remington Smisse",          location: "Roub'Bar",             first_encounter: 4, second_encounter: 10, third_encounter: 21)
Boss.create(loop_pattern: loop_156to170, name: "Javého",                    location: "Lampionnaute",         first_encounter: 2, second_encounter: 13, third_encounter: 18)
Boss.create(loop_pattern: loop_156to170, name: "Mamapoutre",                location: "Patapoutrerie",        first_encounter: 5, second_encounter: 14, third_encounter: 19)
puts "Boss from 171 to 185..."
Boss.create(loop_pattern: loop_171to185, name: "Roi Dunîl",         location: "Donjon Crocodaille",   first_encounter: 2, second_encounter: 8, third_encounter: 14)
Boss.create(loop_pattern: loop_171to185, name: "Grozépine",         location: "Donjon Kannivore",     first_encounter: 4, second_encounter: 13, third_encounter: 18)
Boss.create(loop_pattern: loop_171to185, name: "Kannistère",        location: "Donjon Kanniboul",     first_encounter: 6, second_encounter: 11, third_encounter: 15)
Boss.create(loop_pattern: loop_171to185, name: "Koko le Nutt",      location: "Donjon des Tropikes",  first_encounter: 5, second_encounter: 9, third_encounter: 12)
Boss.create(loop_pattern: loop_171to185, name: "Pandore",           location: "Cité Interdite",       first_encounter: 3, second_encounter: 7, third_encounter: 16)
Boss.create(loop_pattern: loop_171to185, name: "Maman Gerbouille",  location: "Donjon Gerbouille",    first_encounter: 1, second_encounter: 10, third_encounter: 17)
puts "Boss from 186 to 200..."
Boss.create(loop_pattern: loop_186to200, name: "Blérwitch le Furax",              location: "Tanière des Blérox",       first_encounter: 2, second_encounter: 11, third_encounter: 13)
Boss.create(loop_pattern: loop_186to200, name: "Sor'Hon, Seigneur de la Flamme",  location: "Volcan Or’Hodruin",        first_encounter: 5, second_encounter: 17, third_encounter: 23)
Boss.create(loop_pattern: loop_186to200, name: "Oeuf Antique",                    location: "Sanctuaire des Dragoeufs", first_encounter: 1, second_encounter: 15, third_encounter: 20)
Boss.create(loop_pattern: loop_186to200, name: "Cendragon",                       location: "Crête Givrée",             first_encounter: 7, second_encounter: 16, third_encounter: 22)
Boss.create(loop_pattern: loop_186to200, name: "Agonie Coeur-Cristal",            location: "Tour Minérale",            first_encounter: 3, second_encounter: 8, third_encounter: 18)
Boss.create(loop_pattern: loop_186to200, name: "Fantôme du Tanukouï-San",         location: "Tombeau de Pandala",       first_encounter: 4, second_encounter: 9, third_encounter: 19)
Boss.create(loop_pattern: loop_186to200, name: "Fléogre",                         location: "Canyon des Fléopards",     first_encounter: 6, second_encounter: 12, third_encounter: 21)
Boss.create(loop_pattern: loop_186to200, name: "Granduk",                         location: "Usine Hibourg",            first_encounter: 10, second_encounter: 14, third_encounter: 24)
puts "Boss from 201 to 215..."
Boss.create(loop_pattern: loop_201to215, name: "Bufflamboyant", location: "Donjon Toundrasoir",   first_encounter: 7, second_encounter: 12, third_encounter: 16)
Boss.create(loop_pattern: loop_201to215, name: "Crustacérébro", location: "Donjon Crustargneux",  first_encounter: 3, second_encounter: 8, third_encounter: 17)
Boss.create(loop_pattern: loop_201to215, name: "Scorpiétineur", location: "Donjon Cagnardeur",    first_encounter: 1, second_encounter: 6, third_encounter: 11)
Boss.create(loop_pattern: loop_201to215, name: "Phacochemar",   location: "Donjon Vandaliéné",    first_encounter: 9, second_encounter: 15, third_encounter: 20)
Boss.create(loop_pattern: loop_201to215, name: "Casse-Cours",   location: "Donjon Plantigarde",   first_encounter: 2, second_encounter: 13, third_encounter: 18)
Boss.create(loop_pattern: loop_201to215, name: "Sumorse",       location: "Donjon Mansot",        first_encounter: 5, second_encounter: 14, third_encounter: 19)
Boss.create(loop_pattern: loop_201to215, name: "Tortumulte",    location: "Donjon Carapatte",     first_encounter: 4, second_encounter: 10, third_encounter: 21)

puts "Seed generated"