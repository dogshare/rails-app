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
  :img => File.new("#{Rails.root}/db/demodata/profilecc.jpg"))
sonja = Person.create(:name => "Sonja", 
  :zip => 22306, 
  :bio => "There once was a man from Nantucket
    Who kept all his cash in a bucket.
    But his daughter, named Nan,
    Ran away with a man
    And as for the bucket, Nantucket.",
  :img => File.new("#{Rails.root}/db/demodata/profilecc.jpg"))
evan = Person.create(:name => "Evan", 
  :snippet => "You only live once, but if you do it right, once is enough. ― Mae West", 
  :zip => 22306,
  :img => File.new("#{Rails.root}/db/demodata/profilecc.jpg"))
ken = Person.create(:name => "Ken", 
  :zip => 11221,
  :img => "")

# Creating owners

charlotte = Person.create(:name => "Charlotte", 
  :zip => 11222, 
  :person_snippet => "My dog Rocky is the coolest kid on the block!",
  :img => File.new("#{Rails.root}/db/demodata/profilecc.jpg"))
sonja = Person.create(:name => "Sonja", 
  :zip => 22306, 
  :person_snippet => "Dog-obsessed and without my four-legged companion in Manhattan - looking to walk pups!",
  :img => File.new("#{Rails.root}/db/demodata/profilesh.jpg"))
evan = Person.create(:name => "Evan", 
  :person_snippet => "Owner of Pesh (Peshmerga), a Kangal from the mountains of Iraq.",
  :zip => 22306, 
  :img => File.new("#{Rails.root}/db/demodata/profileej.jpg"))
ken = Person.create(:name => "Ken", 
  :zip => 11221, 
  :person_snippet => "Super is my greyhound who would love you to take him for runs while I work!",
  :img => "")

# Creating sitters
rosie = Person.create(:name => "Rosie", 
  :zip => 22222, 
  :person_snippet => "I live with a huge Airedale named Hondo that eats chocolate chips by the bag.", 
  :img => File.new("#{Rails.root}/db/demodata/profilerh.jpg"))
greg = Person.create(:name => "Greg", 
  :zip => 10003, 
  :person_snippet => "I love dogs but don't own one. If you're in the East Village, let's talk!", 
  :img => File.new("#{Rails.root}/db/demodata/profilege.jpg"))

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
  :available_start => "", 
  :available_end => "") 

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
  :available_start => "", 
  :available_end => "")

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
  :available_start =>"", 
  :available_end => "")

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
  :available_start => "", 
  :available_end => "")

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
  :available_start => "", 
  :available_end => "")




