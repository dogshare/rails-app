# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Creating owners
charlotte = Person.create(:name => "Charlotte", 
  :zip => 11222,
  :person_snippet => "My dog Rocky is the coolest kid on the block!",
  :bio => "I live in Brooklyn and would love for a caring person to come hang out with my personable Puggle, Rocky, while I'm at school and work!",
  :img => File.new("#{Rails.root}/db/demodata/profilecc.jpg"),
  :available_start => "2013-08-12", 
  :available_end => "2014-01-06")
sonja = Person.create(:name => "Sonja", 
  :zip => 22306, 
  :person_snippet => "Dog-obsessed and without my four-legged companion in Manhattan - looking to walk pups!",
  :bio => "Formerly a humane society foster parent, I'm in Manhattan for school now and miss having cats and dogs around. I'd be down to go for runs on weekend mornings with your dog if you have a big, active pup.",
  :img => File.new("#{Rails.root}/db/demodata/profilesh.jpg"),
  :available_start => "2013-05-12", 
  :available_end => "2014-05-11")
evan = Person.create(:name => "Evan", 
  :zip => 22306,
  :person_snippet => "Big dogs welcome here.", 
  :bio => "Owner of Pesh (Peshmerga), a Kangal from the mountains of Iraq. I'm down to run/walk big dogs in my area (LES).",
  :img => File.new("#{Rails.root}/db/demodata/profileej.jpg"),
  :available_start => "2014-01-01", 
  :available_end => "2014-01-12")
ken = Person.create(:name => "Ken",
  :zip => 11221,
  :person_snippet => "Super is my greyhound who would love you to take him for runs while I work!",
  :bio => "We live in Brooklyn and both of us enjoy road trips, running on beaches, and long naps.",
  :img => "",
  :available_start => "2013-05-12", 
  :available_end => "2014-01-05")

# Creating sitters
rosie = Person.create(:name => "Rosie", 
  :zip => 22222, 
  :person_snippet => "I live with a huge Airedale named Hondo that eats chocolate chips by the bag.", 
  :img => File.new("#{Rails.root}/db/demodata/profilerh.jpg"),
  :available_start => "2013-05-12", 
  :available_end => "2014-01-09")
greg = Person.create(:name => "Greg", 
  :zip => 10003, 
  :person_snippet => "I love dogs but don't own one. If you're in the East Village, let's talk!", 
  :img => File.new("#{Rails.root}/db/demodata/profilege.jpg"),
  :available_start => "2013-05-12", 
  :available_end => "2014-01-02")

# Creating dogs and associating owners

rocky = Dog.create(:owner => charlotte, 
  :name => "Rocky", 
  :age => 3, 
  :breed => "Puggle", 
  :description => "I'm cool as a cucumber, love my toys, and enjoy long romps in the park", 
  :temperament => "adorable, crazy, stubborn", 
  :active => "very active", 
  :housetrained => true, 
  :picture => true, 
  :special_needs => "none", 
  :dog_snippet => "athletic little monster!", 
  :img => File.new("#{Rails.root}/db/demodata/profilerocky.jpg"), 
  :available_start => "2013-05-12", 
  :available_end => "2014-01-05") 

lucy = Dog.create(:owner => sonja, 
  :name => "Lucyhawk", 
  :age => 3, 
  :breed => "Kangal", 
  :description => "I'm an independent-minded strong girl who may or may not like you.", 
  :temperament => "difficult with very submissive dogs, sometimes aggressive", 
  :active => "very active", 
  :housetrained => true, 
  :picture => true, 
  :special_needs => "anxiety medication", 
  :dog_snippet => "I'm a loyal companion.", 
  :img => File.new("#{Rails.root}/db/demodata/profilelucy.jpg"),
  :available_start => "2013-05-12", 
  :available_end => "2014-01-05")

pesh = Dog.create(:owner => evan, 
  :name => "Peshmerga", 
  :age => 4, 
  :breed => "Kangal", 
  :description => "Yep, I happen to be huge, but I'm also a happy-go-lucky, protective guy who lives in Placitas, NM.",
  :temperament => "goofy and disobedient", 
  :active => "somewhat active", 
  :housetrained => true, 
  :picture => true, 
  :special_needs => "vegetarian; poultry allergies", 
  :dog_snippet => "I love long walks throughout New Mexico.", 
  :img => File.new("#{Rails.root}/db/demodata/profilepesh.jpg"),
  :available_start => "2013-05-12", 
  :available_end => "2014-01-05")

lester = Dog.create(:owner => sonja, 
  :name => 'Lester', 
  :age => '3', 
  :breed => 'Black and Tan Coonhound', 
  :description => "Hey friends! I am a super lovable, easy going pup. I love kissing and my hunting instincts will tear your arm off if you're not prepared for squirrel and bird chasing.", 
  :temperament =>'energetic and happy', 
  :active => 'very', 
  :housetrained => true, 
  :picture => true, 
  :special_needs => 'none', 
  :dog_snippet => "I see with my nose.", 
  :img => File.new("#{Rails.root}/db/demodata/profilelester.jpg"), 
  :available_start => "2013-05-12", 
  :available_end => "2014-01-05")

adult_supervision = Dog.create(:owner => ken, 
  :name => 'Super', 
  :age => '6', 
  :breed => 'Greyhound', 
  :description => 'aloof, loves napping', 
  :temperament => 'reserved', 
  :active => 'when he wants to be', 
  :housetrained => true, 
  :picture => true, 
  :special_needs => 'none', 
  :dog_snippet => "I run circles around all the cool kids!", 
  :img => "", 
  :available_start => "2013-05-12", 
  :available_end => "2014-01-05")




