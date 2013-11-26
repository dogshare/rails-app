# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Creating owners

charlotte = Person.create(:name => "Charlotte", :zip => 11222)
sonja = Person.create(:name => "Sonja", :zip => 22306)
evan = Person.create(:name => "Evan", :zip => 22306)
ken = Person.create(:name => "Ken", :zip => 11221)

# Creating dogs and associating owners

rocky = Dog.create(:owner => charlotte, :name => "Rocky", :age => 3, :breed => "Puggle", :description => "athletic little monster", :temperament => "adorable, crazy, stubborn", :active => "very active", :housetrained => true, :picture => true, :special_needs => "none") 

lucy = Dog.create(:owner => sonja, :name => "Lucyhawk", :age => 3, :breed => "Kangal", :description => "independent-minded strong girl", :temperament => "difficult with very submissive dogs, sometimes aggressive", :active => "very active", :housetrained => true, :picture => true, :special_needs => "anxiety medication")

pesh = Dog.create(:owner => evan, :name => "Peshmerga", :age => 4, :breed => "Kangal", :description => "huge, happy-go-lucky, protective dog", :temperament => "goofy and disobedient", :active => "somewhat active", :housetrained => true, :picture => true, :special_needs => "vegetarian; poultry allergies")

lester = Dog.create(:owner => sonja, :name => 'Lester', :age => '3', :breed => 'Black and Tan Coonhound', :description => 'super lovable, easy going', :temperament =>'energetic and happy', :active => 'very', :housetrained => true, :picture => true, :special_needs => 'none')

adult_supervision = Dog.create(:owner => ken, :name => 'Super', :age => '6', :breed => 'Greyhound', :description => 'aloof, loves napping', :temperament => 'reserved', :active => 'when he wants to be', :housetrained => true, :picture => true, :special_needs => 'none')


# Creating sitters

scott = Person.create(:name => "Scott", :zip => 11111, :available_to_dogsit => "Mondays 3-10pm")
rosie = Person.create(:name => "Rosie", :zip => 22222, :available_to_dogsit => "Wednesdays 9-1pm")

# Create dogshare

rocky.dogshares.build(:owner => charlotte, :sitter => scott)
rocky.dogshares.build(:owner => charlotte)
rocky.save


