# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Offer.destroy_all
User.destroy_all
Association.destroy_all



puts "Creating users..."
puts "Create user 1..."
user_1 = User.create!(first_name: "William", last_name: "Peirs", email: "wpeirs@gmail.com", phone_number: "0603865265",password:"azerty", languages:["French", "English", "Spanish"], location:"Gili Islands", pro: true,date_of_birth:"1990-02-04", bio: "Hi! My name is William. I am a French instructor and I love sharing my knowledge with other people. I am passionate about marine life and I can't wait to meet you for another diving experience !" )
puts "User 1 created"
user_1.avatar.attach(
  {
    io: File.open('public/images/1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_1.save!

user_2 = User.create!(first_name: "Michele", last_name: "Campana", email: "mcampana@scubalibre.com", phone_number: "0767869809",password:"azerty", languages:["French", "English","Italian","German"], location:"Malta", pro: true,date_of_birth:"1991-05-29", bio:" Hello, I'm Michele from Switzerland. I discovered technical diving a few years ago and now I love to teach technical skills to other students." )
puts "User 2 created"
user_1.avatar.attach(
  {
    io: File.open('public/images/2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_2.save!

user_3 = User.create!(first_name: "Laura", last_name: "Kazi", email: "lkazi@scubalibre.com", phone_number: "0767869800",password:"azerty", languages:["Polish", "English"], location:"Gili Islands", pro: true,date_of_birth:"1983-07-12",bio:"I’m your Course Director at Trawangan Dive. When I’m not teaching the new generation of scuba professionals, you can find me on Closed Circuit Rebreather dives exploring deep walls of Lombok, diving in a cave in Mexico, writing articles and blogs to dive magazines or representing sustainable brands and organizing underwater cleanups.
Ocean has been my office for almost a decade. I’ve trained thousands of students, yet I’m still extremely excited every time I take someone underwater. My purpose is to pass this passion and knowledge to you, new SCUBA instructors.
The Ocean Advocate IDC program is designed to show you how to teach SCUBA divers following PADI standards as well as how to use various tools to preserve the natural beauty of our ocean. So join me on a life-changing adventure and enjoy the vibe of the tropical paradise of Gili Trawangan." )
puts "User 3 created"
user_3.avatar.attach(
  {
    io: File.open('public/images/3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_3.save!

user_4 = User.create!(first_name: "Sam", last_name: "Mason", email: "smason@scubalibre.com", phone_number: "0767769809",password:"azerty", languages:["French", "English","Spanish"], location:"Bali", pro: true,date_of_birth:"1988-10-17", bio:"During a year travelling around the world in 2009 Sam learnt to dive on the remote island of Kadavu in south Fiji and immediately became addicted to the sport. Throughout the following months he dived his way up the Great Barrier Reef and around South East Asia and the Near East before settling in Indonesia where he worked as a divemaster guiding divers around the Gilis for 6 months. After a brief stint back home in the UK Sam returned to Indonesia full time to pursue his dream of becoming a full time dive professional completing his instructor exams with SSI and PADI training agencies in early 2014. A passion to further his own skills and experience underwater led Sam to the Yucatan Peninsula in Mexico in 2014 where he mastered sidemount diving and completed his Full Cave certification with Technical Diving International in the famous Cenotes on the country’s east coast.
On his return to Indonesia Sam continued his own education by completing his Advanced Nitrox and Decompression Procedures course together with training to dive the JJ-CCR rebreather while teaching sidemount, Nitrox and deep specialties to a growing base of customers looking to expand their knowledge and limits underwater.
Now an Advanced Mixed Gas Rebreather diver certified to a depth of 100 metres and technical Instructor with TDI Sam focusses on training divers transitioning into the world of technical diving through focus on the fundamentals of diving and safe diving practice.
When not teaching students Sam loves to explore the deep walls of Lombok, preferably on CCR, and is always happy to guide customers eager to experience the incredible underwater world that surrounds Lombok’s Gilis." )
puts "User 4 created"
user_4.avatar.attach(
  {
    io: File.open('public/images/4.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_4.save!

user_5 = User.create!(first_name: "Adam", last_name: "Baxter", email: "abaxter@scubalibre.com", phone_number: "0764869809",password:"azerty", languages:["English"], location:"Gili Islands", pro: true,date_of_birth:"1976-10-09",bio: "Adam started his diving career in 2006.  The love for diving quickly took hold and a year later he had already completed his Divemaster Internship in Honduras.
 After a brief return to the ‘real world’, Adam decided that a career in diving was what he wished to pursue, so went on to successfully complete his Instructor Development Course in the cold waters of New Zealand in 2008.
  Adam has worked as a full time diving instructor ever since, working in a variety of areas in Asia including Thailand, Borneo, Komodo and Gili Trawangan for the last 4 years.   It was here that he was able to further his own diving education by completing up to his Extended Range Technical Instructor rating.
  Adam still teaches recreational diving full time, whilst co managing Trawangan Dive.  But he loves the opportunity to teach technical courses.
  Having spent a lot of the last 6 years underwater, he is a very competent instructor, with a lot to offer his students with both his knowledge and teaching style.")
puts "User 5 created"
user_5.avatar.attach(
  {
    io: File.open('public/images/5.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_5.save!

user_6 = User.create!(first_name: "Kenneth", last_name: "Stromberg", email: "kstromberg@scubalibre.com", phone_number: "0664869809",password:"azerty", languages:["English","Swedish"], location:"Cozumel", pro: true,date_of_birth:"1998-12-09", bio:"My name is Kenneth (Ken) and after spending most of my life as a civil engineer in Sweden, I decided to discover scuba diving.I loved it so much that I decided to become a professional and made my way up to Course Director and Techn instructor")
puts "User 6 created"
 user_6.avatar.attach(
   {
     io: File.open('public/images/6.jpeg'),
     filename: 'anyname.jpg',
     content_type: 'image/jpg'
   }
 )
 user_6.save!

user_7 = User.create!(first_name: "Brian", last_name: "Zaugg", email: "bzaug@scubalibre.com", phone_number: "0524869809",password:"azerty", languages:["English",], location:"Quebec", pro: true,date_of_birth:"1998-01-09", bio: "I started diving in 2014 and as soon as I hit the water, I was hooked. I knew I loved SCUBA from the first moment when I took a breath off a regulator and had the realization, “I’m breathing and I’m UNDERWATER!” Add in the diverse spectacle of marine life I get to see while underwater, the interesting places I get to go, and the wonderful people I get to meet & dive with and I think you’ll agree SCUBA diving is an outstanding way to spend time.
As a PADI instructor, I get to share my passion for SCUBA diving with my students. I love sharing in a new Open Water Scuba Diver’s excitement after their first ocean dive. It is a thrill to teach a new Wreck Diver how to run a line, then follow them as they conduct their first wreck penetration.
As a both a diver and instructor, the health of our oceans is an important cause for me. Above water, I help out by advocating for ocean conservation, helping with dive site & beach clean ups, conducting Project AWARE courses, and generally educating about responsible practices related to SCUBA diving.")
puts "User 7 created"
user_7.avatar.attach(
   {
     io: File.open('public/images/7.jpeg'),
     filename: 'anyname.jpg',
     content_type: 'image/jpg'
   }
 )
 user_7.save!


puts "Create user 8..."
user_8 = User.create!(first_name: "Eric", last_name: "Herrera", email: "eherrera@scubalibre.com", phone_number: "0603865205",password:"azerty", languages:["French", "English",], location:"Chandler", pro: true,date_of_birth:"1982-11-29", bio: "So far, my two favorite places to dive are the Cenotes in Mexico and Saba in the Dutch Caribbean.
  The best part about being an instructor is that single moment when a new diver has that “ah ha” moment that makes everything click and they finally feel what it is like to effortlessly glide underwater.")
puts "User 8 created"
user_8.avatar.attach(
  {
    io: File.open('public/images/8.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_8.save!

puts "Create user 9..."
user_9 = User.create!(first_name: "Will", last_name: "Hardy", email: "willhardy@scubalibre.com", phone_number: "0903865205",password:"azerty", languages:["French", "English","Dutch"], location:"Cuba", pro: true,date_of_birth:"1962-07-13", bio: "I got into Scuba May of 2019 and it was love at first dive. After my open water day at the lake I immediately signed up for a membership to get as many more courses as I could. After completing all of my recreational courses, I decided to go pro and haven’t looked back.
  My favorite dive site so far has been Cozumel, but I still have many more places id like to try!")
puts "User 9 created"
user_9.avatar.attach(
  {
    io: File.open('public/images/9.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_9.save!

puts "Create user 10..."
user_10 = User.create!(first_name: "Josh", last_name: "Carter", email: "jcarter@scubalibre.com", phone_number: "0403865205",password:"azerty", languages:["Hebrew", "English",], location:"Lombok", pro: true,date_of_birth:"1983-07-16", bio: "I never would have guessed that a Caribbean cruise combined with a spur of the moment scuba certification in April 2015 would have led to so much! Scuba diving has allowed me to travel, see amazing places, meet fantastic people and create lasting memories. Each place has its own draw, however the Cozumel and Playa combo is one I can’t seem to beat.
I am currently working as an instructor with the goal of retiring from the corporate world. After receiving my certification and quickly becoming addicted to the underwater world, it was an easy choice to work with Scuba Libre, where the family atmosphere aides in creating safe and confident divers.")

puts "User 10 created"

user_10.avatar.attach(
  {
    io: File.open('public/images/10.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_10.save!

puts "Create user 11..."

user_11 = User.create!(first_name: "Sean", last_name: "Dirks", email: "sdirks@scubalibre.com", phone_number: "0433865205",password:"azerty", languages:["English","Spanish"], location:"Cancun", pro: true,date_of_birth:"1996-08-16", bio: "
  As a kid, I dreamed about seeing the undersea world up close and personal after watching biographies from Jacques Cousteau and cartoons like Johnny Quest. I caught the bug for diving during my Open Water class and wanted to increase my knowledge, so I kept acquiring more certifications and specialties until I hit Divemaster. I often visit Puerto Vallarta, and love the dive operations and sites to choose from.  Wreck Alley, in San Diego is also an interesting and close destination with some great sunken ships to explore.

  The staff at Scuba Libre wants you to love Scuba as much as we do.  We also want to promote safe diving habits so you can enjoy diving for many years to come.  I hope you come and dive with us!")

    user_11.avatar.attach(
  {
    io: File.open('public/images/11.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_11.save!

puts "Create user 12..."
user_12 = User.create!(first_name: "Mike", last_name: "McNulty", email: "mmculty@scubalibre.com", phone_number: "0133865205",password:"azerty", languages:["English","Spanish"], location:"Playa del Carmen", pro: true,date_of_birth:"1998-08-16",bio: "I first dove (looking back on it now, completely unsafely) during a work trip off Culebra at 23 years old in 1985 and thought it was the most amazing f’ing thing I had ever experienced.  Many corporate-job years and stresses later, fastforward  to 2014, I was vacationing in Cabo and took my second recreational dive with a local Divemaster legend.  The sea life was totally, ridiculously amazing, and I decided that I would dive again as soon as I could – and this time I would do it right away and with safety as a primary goal. I returned to the US, signed up the next day for OW and the rest is history.
love working with Scuba Libre and Customers to bring more joy to everyone in both the fresh air and underwater worlds, and to further support the PADI Aware Mission and Pillars of Change.")

user_12.avatar.attach(
  {
    io: File.open('public/images/12.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_12.save!

puts "Create user 13..."
user_13 = User.create!(first_name: "Steven", last_name: "Manross", email: "smanross@scubalibre.com", phone_number: "0233865205",password:"azerty", languages:["English","Spanish"], location:"Tijuana", pro: true, date_of_birth:"1982-09-23", bio: "As a kid, I dreamed about seeing the undersea world up close and personal after watching biographies from Jacques Cousteau and cartoons like Johnny Quest. I caught the bug for diving during my Open Water class and wanted to increase my knowledge, so I kept acquiring more certifications and specialties until I hit Divemaster. I often visit Puerto Vallarta, and love the dive operations and sites to choose from.  Wreck Alley, in San Diego is also an interesting and close destination with some great sunken ships to explore.
  The staff at Scuba libre  wants you to love Scuba as much as we do.  We also want to promote safe diving habits so you can enjoy diving for many years to come.  I hope you come and dive with us!")

user_13.avatar.attach(
  {
    io: File.open('public/images/13.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_13.save!

puts "Create user 14..."
user_14 = User.create!(first_name: "Brittany", last_name: "Smolinski", email: "bmolinsky@scubalibre.com", phone_number: "01133865205",password:"azerty", languages:["English","Russian"], location:"Bali", pro:true,date_of_birth:"1978-11-18",bio: "I got certified in 2005 after a snorkeling trip to Florida where I saw others blowing bubbles beneath us. I knew I wanted to go deeper and give scuba diving a try, and I’ve been hooked ever since! As a lover of water it only made sense to become a dive professional and share my passion with others. Warm water diving is my favorite, anywhere from Bonaire to Malaysia. When you’re
  under the water, nothing else matters but breathing 🙂
  The Scuba Libre family took me in as a stray in 2016, the open environment and friendliness of everyone here feels like home. Whether taking classes, going on trips or enjoying diving out at the lake, the SL crew is always there for you!")
user_14.avatar.attach(
  {
    io: File.open('public/images/14.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_14.save!

puts "Create user 15..."
user_15= User.create!(first_name: "Reilly", last_name: "Fogarty", email: "rfogarty@scubalibre.com", phone_number: "02133865205",password:"azerty", languages:["English","Italian"], location:"Cabo San Lucas",pro: true, date_of_birth:"1993-09-12",bio: "Reilly Fogarty is technical diving instructor based in Rockport, Massachusetts. A USCG Licensed Captain and rEvo Factory Instructor, his professional background includes surgical and wilderness emergency medicine, hyperbarics research and large-scale diving risk mitigation and first aid program design and management. He has previously worked on human trials in extreme exposure physiology for the Duke Center for Hyperbaric Medicine and Environmental Physiology and as the Risk Mitigation Team Lead for Divers Alert Network. His writing and photography work can be found in Scuba Diving Magazine, Alert Diver, Sport Diver Magazine, GUE InDepth, and numerous other outlets. When not diving or teaching, Reilly can be found taking pictures of his dog Toby, backpacking, or restoring motorcycles.")

user_15.avatar.attach(
  {
    io: File.open('public/images/15.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_15.save!

puts "Create user 16..."
user_16= User.create!(first_name: "Gauthier", last_name: "Nadaud", email: "gnadaud@scubalibre.com",password:"azerty", teacher: false)

user_16.avatar.attach(
  {
    io: File.open('public/images/gn1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_16.save!

puts "Create user 17..."
user_17= User.create!(first_name: "Ahlonko", last_name: "Kowouvi", email: "akowouvi@scubalibre.com",password:"azerty", teacher: false)

user_17.avatar.attach(
  {
    io: File.open('public/images/ak.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_17.save!

puts "Create association 18..."
user_18= User.create!(first_name: "Morgan", last_name: "Le Moroux", email: "mlemoroux@scubalibre.com",password:"azerty", teacher: false)

user_18.avatar.attach(
  {
    io: File.open('public/images/mlm.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_18.save!

puts "Create association 1..."
association_1= Association.create!(name: "PADI")
 association_1.save!

puts "Create association 2..."
association_2= Association.create!(name: "SSI")
association_2.save!

 puts "Create association 3..."
association_3= Association.create!(name: "TDI")
 association_3.save!
