# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Creating dogs 

rocky = Dog.create(:name => "Rocky", :age => 3, :breed => "Pugle", :description => "athletic little monster", :temperament => "adorable, crazy, stubborn", :active => "very active", :housetrained => true, :picture => true, :special_needs => "none") 

lucy = Dog.create(:name => "Lucyhawk", :age => 3, :breed => "Kangal", :description => "independent-minded strong girl", :temperament => "difficult with very submissive dogs, sometimes aggressive", :active => "very active", :housetrained => true, :picture => true, :special_needs => "anxiety medication")

pesh = Dog.create(:name => "Peshmerga", :age => 4, :breed => "Kangal", :description => "huge, happy-go-lucky, protective dog", :temperament => "goofy and disobedient", :active => "somewhat active", :housetrained => true, :picture => true, :special_needs => "vegetarian; poultry allergies")

lester = Dog.create(:name => 'Lester', :age => '3', :breed => 'Black and Tan Coonhound', :description => 'super lovable, easy going', :temperament =>'energetic and happy', :active => 'very', :housetrained => true, :picture => true, :special_needs => 'none')

adult_supervision = Dog.create(:name => 'Super', :age => '6', :breed => 'Greyhound', :description => 'aloof, loves napping', :temperament => 'reserved', :active => 'when he wants to be', :housetrained => true, :picture => true, :special_needs => 'none')

# Creating sitters

owner = Person.new
owner.name = "Charlotte"
owner.save


sonja = Person.create(:name => "Sonja")
charlotte = Person.create(:name => "Charlotte")


dogshare = Dogshare.create(:dog => rocky, :sitter => sonja)
dogshare = Dogshare.create(:dog => adult_supervision, :sitter => charlotte)

# Dogshare.create(:dog => lucy,
#                 :sitter => sitter,
#                 :available => false)


