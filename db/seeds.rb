# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Reviews Destroy"
Review.destroy_all
puts "Messages Destroy"
Message.destroy_all
puts "Destroy Bookings"
Booking.destroy_all
puts "Destroy Offer"
Offer.destroy_all
puts "Destroy Organism"
Organism.destroy_all
puts "Destroy User"
User.destroy_all



puts "Creating users..."
puts "Create user 1..."
user_1 = User.create!(first_name: "William", last_name: "Peirs", email: "wpeirs@gmail.com", phone_number: "0603865265",password:"azerty", languages:["French", "English", "Spanish"], location:"Gili Islands, Indonesia", pro: true,date_of_birth:"1990-02-04", bio: "Hi! My name is William. I am a French instructor and I love sharing my knowledge with other people. I am passionate about marine life and I can't wait to meet you for another diving experience !" )

user_1.avatar.attach(
  {
    io: File.open('public/images/WP.JPG'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_1.save!
puts "User 1 created"

user_2 = User.create!(first_name: "Michele", last_name: "Campana", email: "mcampana@scubalibre.com", phone_number: "0767869809",password:"azerty", languages:["French", "English","Italian","German"], location:"St Peter's Pool, Malta", pro: true,date_of_birth:"1991-05-29", bio:" Hello, I'm Michele from Switzerland. I discovered technical diving a few years ago and now I love to teach technical skills to other students." )
puts "User 2 created"
user_2.avatar.attach(
  {
    io: File.open('public/images/2.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_2.save!

 user_3 = User.create!(first_name: "Laura", last_name: "Kazi", email: "lkazi@scubalibre.com", phone_number: "0767869800",password:"azerty", languages:["Polish", "English"], location:"Gili Islands, Indonesia", pro: true,date_of_birth:"1983-07-12",bio:"I???m your Course Director at Trawangan Dive. When I???m not teaching the new generation of scuba professionals, you can find me on Closed Circuit Rebreather dives exploring deep walls of Lombok, diving in a cave in Mexico, writing articles and blogs to dive magazines or representing sustainable brands and organizing underwater cleanups.")
 puts "User 3 created"
user_3.avatar.attach(
  {
    io: File.open('public/images/3.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_3.save!

user_4 = User.create!(first_name: "Sam", last_name: "Mason", email: "smason@scubalibre.com", phone_number: "0767769809",password:"azerty", languages:["French", "English","Spanish"], location:"Bali, Indonesia", pro: true,date_of_birth:"1988-10-17", bio:"During a year travelling around the world in 2009 Sam learnt to dive on the remote island of Kadavu in south Fiji and immediately became addicted to the sport. Throughout the following months he dived his way up the Great Barrier Reef and around South East Asia and the Near East before settling in Indonesia where he worked as a divemaster guiding divers around the Gilis for 6 months. After a brief stint back home in the UK Sam returned to Indonesia full time to pursue his dream of becoming a full time dive professional completing his instructor exams with SSI and PADI training agencies in early 2014.")
puts "User 4 created"
user_4.avatar.attach(
  {
    io: File.open('public/images/4.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_4.save!

user_5 = User.create!(first_name: "Adam", last_name: "Baxter", email: "abaxter@scubalibre.com", phone_number: "0764869809",password:"azerty", languages:["English"], location:"Gili Islands, Indonesia", pro: true,date_of_birth:"1976-10-09",bio: "Adam started his diving career in 2006.  The love for diving quickly took hold and a year later he had already completed his Divemaster Internship in Honduras.
 After a brief return to the ???real world???, Adam decided that a career in diving was what he wished to pursue, so went on to successfully complete his Instructor Development Course in the cold waters of New Zealand in 2008." )
puts "User 5 created"
user_5.avatar.attach(
  {
    io: File.open('public/images/5.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_5.save!

user_6 = User.create!(first_name: "Kenneth", last_name: "Stromberg", email: "kstromberg@scubalibre.com", phone_number: "0664869809",password:"azerty", languages:["English","Swedish"], location:"Cozumel, Mexico", pro: true,date_of_birth:"1998-12-09", bio:"My name is Kenneth (Ken) and after spending most of my life as a civil engineer in Sweden, I decided to discover scuba diving.I loved it so much that I decided to become a professional and made my way up to Course Director and Techn instructor.")
puts "User 6 created"
 user_6.avatar.attach(
   {
     io: File.open('public/images/6.jpeg'),
     filename: 'anyname.jpg',
     content_type: 'image/jpg'
   }
 )
 user_6.save!

user_7 = User.create!(first_name: "Brian", last_name: "Zaugg", email: "bzaug@scubalibre.com", phone_number: "0524869809",password:"azerty", languages:["English",], location:"Caye Caulker, Belize", pro: true,date_of_birth:"1998-01-09", bio: "I started diving in 2014 and as soon as I hit the water, I was hooked. I knew I loved SCUBA from the first moment when I took a breath off a regulator and had the realization, ???I???m breathing and I???m UNDERWATER!??? Add in the diverse spectacle of marine life I get to see while underwater, the interesting places I get to go, and the wonderful people I get to meet & dive with and I think you???ll agree SCUBA diving is an outstanding way to spend time." )
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
user_8 = User.create!(first_name: "Eric", last_name: "Herrera", email: "eherrera@scubalibre.com", phone_number: "0603865205",password:"azerty", languages:["French", "English",], location:"Chandler, USA", pro: true,date_of_birth:"1982-11-29", bio: "So far, my two favorite places to dive are the Cenotes in Mexico and Saba in the Dutch Caribbean.
  The best part about being an instructor is that single moment when a new diver has that ???ah ha??? moment that makes everything click and they finally feel what it is like to effortlessly glide underwater.")
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
user_9 = User.create!(first_name: "Will", last_name: "Hardy", email: "willhardy@scubalibre.com", phone_number: "0903865205",password:"azerty", languages:["French", "English","Dutch"], location:"La Havane, Cuba", pro: true,date_of_birth:"1962-07-13", bio: "I got into Scuba May of 2019 and it was love at first dive. After my open water day at the lake I immediately signed up for a membership to get as many more courses as I could. After completing all of my recreational courses, I decided to go pro and haven???t looked back.
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
user_10 = User.create!(first_name: "Josh", last_name: "Carter", email: "jcarter@scubalibre.com", phone_number: "0403865205",password:"azerty", languages:["Hebrew", "English",], location:"Ensenada, Baja California", pro: true,date_of_birth:"1983-07-16", bio: "I never would have guessed that a Caribbean cruise combined with a spur of the moment scuba certification in April 2015 would have led to so much! Scuba diving has allowed me to travel, see amazing places, meet fantastic people and create lasting memories. Each place has its own draw, however the Cozumel and Playa combo is one I can???t seem to beat." )
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

user_11 = User.create!(first_name: "Sean", last_name: "Dirks", email: "sdirks@scubalibre.com", phone_number: "0433865205",password:"azerty", languages:["English","Spanish"], location:"Cancun, Mexico", pro: true,date_of_birth:"1996-08-16", bio: "
  As a kid, I dreamed about seeing the undersea world up close and personal after watching biographies from Jacques Cousteau and cartoons like Johnny Quest. I caught the bug for diving during my Open Water class and wanted to increase my knowledge, so I kept acquiring more certifications and specialties until I hit Divemaster. I often visit Puerto Vallarta, and love the dive operations and sites to choose from.  Wreck Alley, in San Diego is also an interesting and close destination with some great sunken ships to explore." )
    user_11.avatar.attach(
  {
    io: File.open('public/images/11.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_11.save!

puts "Create user 12..."
user_12 = User.create!(first_name: "Mike", last_name: "McNulty", email: "mmculty@scubalibre.com", phone_number: "0133865205",password:"azerty", languages:["English","Spanish"], location:"Playa del Carmen, Mexico", pro: true,date_of_birth:"1998-08-16",bio: "I first dove (looking back on it now, completely unsafely) during a work trip off Culebra at 23 years old in 1985 and thought it was the most amazing f???ing thing I had ever experienced.  Many corporate-job years and stresses later, fastforward  to 2014, I was vacationing in Cabo and took my second recreational dive with a local Divemaster legend.  The sea life was totally, ridiculously amazing, and I decided that I would dive again as soon as I could ??? and this time I would do it right away and with safety as a primary goal." )
user_12.avatar.attach(
  {
    io: File.open('public/images/12.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_12.save!

puts "Create user 13..."
user_13 = User.create!(first_name: "Steven", last_name: "Manross", email: "smanross@scubalibre.com", phone_number: "0233865205",password:"azerty", languages:["English","Spanish"], location:"Tijuana, Mexico", pro: true, date_of_birth:"1982-09-23", bio: "As a kid, I dreamed about seeing the undersea world up close and personal after watching biographies from Jacques Cousteau and cartoons like Johnny Quest. I caught the bug for diving during my Open Water class and wanted to increase my knowledge, so I kept acquiring more certifications and specialties until I hit Divemaster. I often visit Puerto Vallarta, and love the dive operations and sites to choose from.  Wreck Alley, in San Diego is also an interesting and close destination with some great sunken ships to explore." )

user_13.avatar.attach(
  {
    io: File.open('public/images/13.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_13.save!

puts "Create user 14..."
user_14 = User.create!(first_name: "Brittany", last_name: "Smolinski", email: "bmolinsky@scubalibre.com", phone_number: "01133865205",password:"azerty", languages:["English","Russian"], location:"Raftsundet, Norway", pro:true,date_of_birth:"1978-11-18",bio: "I got certified in 2005 after a snorkeling trip to Florida where I saw others blowing bubbles beneath us. I knew I wanted to go deeper and give scuba diving a try, and I???ve been hooked ever since! As a lover of water it only made sense to become a dive professional and share my passion with others. Warm water diving is my favorite, anywhere from Bonaire to Malaysia. When you???re
  under the water, nothing else matters but breathing ????.")
user_14.avatar.attach(
  {
    io: File.open('public/images/14.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_14.save!

puts "Create user 15..."
user_15 = User.create!(first_name: "Reilly", last_name: "Fogarty", email: "rfogarty@scubalibre.com", phone_number: "02133865205",password:"azerty", languages:["English","Italian"], location:"Oakridge, Honduras",pro: true, date_of_birth:"1993-09-12",bio: "Reilly Fogarty is technical diving instructor based in Rockport, Massachusetts. A USCG Licensed Captain and rEvo Factory Instructor, his professional background includes surgical and wilderness emergency medicine, hyperbarics research and large-scale diving risk mitigation and first aid program design and management. He has previously worked on human trials in extreme exposure physiology for the Duke Center for Hyperbaric Medicine and Environmental Physiology and as the Risk Mitigation Team Lead for Divers Alert Network.")

user_15.avatar.attach(
  {
    io: File.open('public/images/15.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_15.save!


puts "Create user 19..."
user_19 = User.create!(first_name: "Kaja", last_name: "Danda", email: "kdanda@scubalibre.com", phone_number: "01133865205",password:"azerty", languages:["English","Polish"], location:"Bali, Indonesia", pro:true,date_of_birth:"1988-11-18",bio: "Hey ! My name is Kaja, I am a Polish Scuba Diving Instructor and I currently work in Bali. Feel free ton contact me for some new diving adventures !")
user_19.avatar.attach(
  {
    io: File.open('public/images/kd.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_19.save!

puts "Create user 20..."
user_20 = User.create!(first_name: "Jonathan", last_name: "Jarrell", email: "jjarrell@scubalibre.com", phone_number: "02333865205",password:"azerty", languages:["English",], location:"Bali, Indonesia", pro:true,date_of_birth:"1989-11-18",bio: " Hello there, my name is Jonathan but people call me Twan. Apart from being a sound engineer for heavy metal bands, I am also a dive instructor and I'd love to see you in Bali !")
user_20.avatar.attach(
  {
    io: File.open('public/images/jj.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_20.save!

puts "Create user 21..."
user_21 = User.create!(first_name: "Sarah", last_name: "Jacobs", email: "sjacobs@scubalibre.com", phone_number: "06533865205",password:"azerty", languages:["English",], location:"Bali, Indonesia", pro:true,date_of_birth:"1983-12-18",bio: "Hey I'm Sarah, I'm a Scuba Diving Instructor since 3 years now and I've worked all around the globe. I now live in Bali, feel free to contact me for some lessons !")
user_21.avatar.attach(
  {
    io: File.open('public/images/sj.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_21.save!

puts "Create user 22..."
user_22 = User.create!(first_name: "Marie", last_name: "Renodeau", email: "mrenodeau@scubalibre.com", phone_number: "02333865205",password:"azerty", languages:["English","French"], location:"Bali, Indonesia", pro:true,date_of_birth:"1991-12-09",bio: "Hello, my name is Marie. I am an Open Water Scuba Instructor since 3 years and I work in Bali. Hit me up for some lessons and fun dives!")
user_22.avatar.attach(
  {
    io: File.open('public/images/mr.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_22.save!

puts "Create user 23..."
user_23 = User.create!(first_name: "Gildas", last_name: "Cousin", email: "gcousin@scubalibre.com", phone_number: "02333865291",password:"azerty", languages:["English","French"], location:"Bali, Indonesia", pro:true,date_of_birth:"1998-02-18",bio: "Bonjour ! I am a French Diving Instructor who's passionate about technical diving as well. Please contact me for some outstanding adventures !")
user_23.avatar.attach(
  {
    io: File.open('public/images/gc.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_23.save!

puts "Create user 24..."
user_24 = User.create!(first_name: "Joey", last_name: "Gartman", email: "gcartman@scubalibre.com", phone_number: "04333865291",password:"azerty", languages:["English"], location:"Bali, Indonesia", pro:true,date_of_birth:"1993-08-23",bio: "I am a passionate Scuba Diving Instructor who loves to share new experience with students and or advanced divers. I hope to see you soon in Bali!")
user_24.avatar.attach(
  {
    io: File.open('public/images/jg.jpg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_24.save!

puts "Create user 16..."
user_16 = User.create!(first_name: "Gauthier", last_name: "Nadaud", email: "gnadaud@scubalibre.com", password:"azerty", pro: false)

user_16.avatar.attach(
  {
    io: File.open('public/images/gn1.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_16.save!

puts "Create user 17..."
user_17 = User.create!(first_name: "Ahlonko", last_name: "Kowouvi", email: "akowouvi@scubalibre.com", password:"azerty", pro: false)

user_17.avatar.attach(
  {
    io: File.open('public/images/ak.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_17.save!

puts "Create user 18..."
user_18 = User.create!(first_name: "Morgan", last_name: "Le Moroux", email: "mlemoroux@scubalibre.com", password:"azerty", pro: false)

user_18.avatar.attach(
  {
    io: File.open('public/images/mlm.jpeg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
)
user_18.save!

puts "Create organism 1..."
Organism_1 = Organism.create!(name: "PADI")
Organism_1.save!

puts "Create organism 2..."
Organism_2 = Organism.create!(name: "SSI")
Organism_2.save!

puts "Create organism 3..."
Organism_3 = Organism.create!(name: "TDI")
Organism_3.save!

puts "Create offer 1..."
User.all.each do |user|
  offer_1 = Offer.new(name: "PADI Open Water",
    category: "Course",
    duration: 3,
    unit_duration: "days",
    price: 350,
    currency: "USD",
    briefing: "Become a certified diver and receive a license to dive unsupervised to a maximum depth of 18m. This PADI certification is recognized worldwide and is valid for the rest of your life.  The course involves dive theory, video presentations; confined water pool training which ease you into the fundamentals of diving; and four boat dives where you will master the skills learnt in the pool.  Two dives to a maximum depth of 12m and two dives to a maximum depth of 18m.
    The course schedule can be flexible to accommodate any necessary changes but generally:

  Day 1 (8.15-4.30pm)
  The first 3 sections of theory, confined water dives 1 and 2 and open water dive 1.

  Day 2 (8.15am ??? 4.30pm)
  The remaining theory sections, confined water dives 3,4 and 5; waterman ship skills and open water dive 2.

  Day 3 (8.15am ??? 3pm)
  Final exam; open water dives 3 and 4; celebrate!!!",
    level: "Beginner",
    prerequisites: "To learn to dive and to enroll in the PADI Open Diver course or Junior Open Water Diver course, you must be 10 years or older
    You will also need to be able to swim: there is a 200m swim test or 300m snorkel test that you will need to pass during the course
    You will be required to demonstrate that you can comfortably float or tread water for 10 minutes.  You will also need to complete a 200m surface swim or a 300m swim using a mask, snorkel and fins",
    included: "Equipment Rental
    Dive Computer Rental
    PADI Open Water ??? E-Manual
    Logbook
    PADI Certification",
    dives: 4)
  offer_1.user = user
  offer_1.save!

  puts "Offer 1 OK"

  puts "Create offer 1..."

  offer_2 = Offer.new(name: "PADI Discover Scuba Diving",
    category: "Course",
    duration: 1,
    unit_duration: "day",
    price: 70,
    currency: "USD",
    briefing: "The PADI Discover Scuba Diving program is an introduction to scuba diving aimed at those who are unsure if they want to get certified, or have limited time.  You will begin with a short safety briefing before trying on the scuba gear in the pool. We teach basic diving skills and hand signals to boost your confidence under water.
    After the pool session you will go for a dive in the ocean to a maximum depth of 12 meters.  Turtles are frequently seen along with other reef fish and beautiful coral. During your dive you will be permanently supervised by a scuba instructor.",
    level: "Beginner",
    prerequisites: "You must be 10 years or older
    No previous experience is necessary, but you must be able to complete the diver medical statement.",
    included: "Equipment rental
    One ocean dive
    Pool training session",
    dives: 1)
  offer_2.user = user
  offer_2.save!

  puts "Offer 2 OK"

  puts "Create offer 3..."

  offer_3 = Offer.new(name: "PADI Scuba Diver ",
    category: "Course",
    duration: 2,
    unit_duration: "days",
    price: 250,
    currency: "USD",
    briefing:"The PADI Scuba Diver course is a subset of the PADI Open Water Diver course. If you???re short on time but really want to become a diver, the PADI Scuba Diver rating might be right for you ?? particularly if you expect to go scuba diving primarily with a dive guide. This course is an intermediate step for earning an Open Water Diver certification, if that???s your ultimate goal.

    The PADI Scuba Diver course is ideal for those with limited time. It involves 3 modules of theory from the Open Water course, half a day of confined pool training and 2 open water dives up to 12 meters.

    You will receive a certification that lets you dive to 12 meters under the supervision of a Divemaster or Instructor. This license is valid worldwide.

    PADI Scuba Divers are qualified to:
    Dive under the direct supervision of a PADI Professional to a maximum depth of 12 metres/40 feet.
    Obtain air fills, rent or purchase scuba equipment and participate in dive activities as long as properly supervised.
    Continue dive training by completing the PADI Open Water Diver certification and taking certain specialty diver courses.",


    level: "Beginner",
    prerequisites: "To learn to dive and to enroll in the PADI Scuba Diver Course, you must be 10 years or older
    You need adequate swimming skills and need to be in good physical health
    No prior experience with scuba diving is required, but you can try it first through the Discover Scuba Diving program",
    included: "Equipment Rental
    Dive Computer Rental
    PADI Open Water ??? E-Manual
    Logbook
    PADI Certification",
    dives: 2)

  offer_3.user = user
  offer_3.save!

  puts "Offer 3 OK"

  puts "Create offer 4..."

  offer_4 = Offer.new(name: "PADI Advanced Open Water ",
    category: "Course",
    duration: 3,
    unit_duration: "days",
    price: 370,
    currency: "USD",
    briefing:"Once you complete your PADI Open Water Course, you will want to continue your diving education with the PADI Adventure Diver or the Advanced Open Water course.
    This course consists of 5 Adventure dives designed to build confidence and expand your scuba skills.  There are no videos or exams, just a bit of reading and some knowledge review questions to answer.
    The Deep (30m) and navigation dives are mandatory but the other three dives can be selected, meaning you can tailor the course to suit your interests. Some of the more popular options include wreck, night, drift, nitrox and photography. Your instructor will discuss all the options available with you.",
    level: "Advanced",
    prerequisites: "Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI
    Must be 12 years or older
    Must be able to complete the PADI medical statement",
    included:"Equipment Rental
    Dive Computer Rental
    PADI Adventures in diving ??? E-Manual
    Logbook
    PADI Certification",
    dives: 5)
  offer_4.user = user
  offer_4.save!

  puts "Offer 4 OK"

  puts "Create offer 5..."

  offer_5 = Offer.new(name: "Emergency First Response (EFR)",
    category: "Course",
    duration: 1,
    unit_duration: "day",
    price: 150,
    currency: "USD",
    briefing:"First aid and CPR are good skills for everyone, not just scuba divers. You will need this certificate before starting the PADI Rescue Diver course or any of the professional diver courses. The Emergency First Response (EFR) course teaches you medical emergency response skills and prepares you for assisting in any medical emergency.

    What you learn in the EFR course:

    BLS (Basic Life Support) CPR and rescue breaths
    Treatment for shock
    Spinal injury management
    Use of barriers to reduce disease transmission risks
    Basic first aid and first aid kit considerations
    These skills can be used in any area or environment.  Most work organizations will accept this as a recognized first aid certificate.",
    level: "Advanced",
    prerequisites: "If you already hold a First AID & CPR training certificate issued within the last 2 years, then you will not need to complete the Emergency First Responder (EFR) training.  However, we do recommend a refresher",
    included: "Equipment rental",
    dives: 0)
  offer_5.user = user
  offer_5.save!

  puts "Offer 5 OK"

  puts "Create offer 6..."



  offer_6 = Offer.new(name: "PADI Rescue Diver",
    category: "Course",
    duration: 3,
    unit_duration: "days",
    price: 299,
    currency: "USD",
    briefing:"The PADI Rescue Diver course is informative and challenging and will build your confidence as a recreational diver. The intensive classroom and in-water rescue training will be both fun and rewarding. Throughout the course students complete 12 open water training exercises which will enhance ability to self rescue, assist distressed divers or deal with a variety of emergency situations. The scenarios and skills are spread over 4 dives.

    If you do not have a current recognized first aid certificate that has been issued or updated in the last 2 years, you can complete the Emergency First Response course prior to starting the Rescue Course.

    Includes:

    First aid for diving injuries
    First aid for marine injuries
    Emergency procedures
    Rescue equipment consideration and usage
    Distress recognition
    Self-rescue
    Rescue entries, approaches and exits
    Assist and transportation of patients
    Missing, unconscious and submerged diver rescue
    In-water artificial respiration
    Accident recording and reporting
    Expand your knowledge of diving with the PADI Rescue Diver Course
    By the end of the course, you will have expanded your knowledge of diving, increased your level of diving skill and be more aware of what is happening in the diving environment. Most importantly, rescue training can help you to save lives and increase safety by preparing you to properly respond to diving emergencies. That???s because the PADI Rescue Course is the most rewarding course for advanced scuba divers.

    After completing CPR and first aid and the PADI Rescue Diver course, you will be allowed to become a PADI member by joining the Professional levels, starting with the Divemaster Course.",
    level: "Advanced",
    prerequisites:"Be 12 years or older
    Have a PADI Adventure Diver certification (or PADI Advanced Open Water), or have a qualifying certification from another organization
    Certified Emergency First Responce Primary and Secondary care within the last 24 months",
    included: "Equipment Rental
    Dive Computer Rental
    PADI Rescue Diver ??? E-Manual
    Logbook
    PADI Certification
    EFR",
    dives: 5)
  offer_6.user = user
  offer_6.save!

  puts "Offer 6 OK"

  puts "Create offer 7..."

  offer_7 = Offer.new(name: "PADI enriched Air Diver (NITROX)",
    category: "Specialty Training",
    duration: 3 ,
    unit_duration: "days",
    price: 299,
    currency: "USD",
    briefing:"The benefits of more time underwater and less time between dives makes the Enriched Air (NITROX) Diver PADI???s most popular speciality course.  Scuba diving with enriched air gives you more ???no decompression??? dive time which means more time underwater, especially on repetitive dives.

    What You Will Learn:

    Diving techniques using enriched air NITROX for longer recreational dives, safety considerations and avoiding possible hazards.
    Equipment and enriched air considerations; managing oxygen exposure and tank contents; and setting a dive computer.
    Planning and making no-decompression dives using air NITROX blends between 22% and 40% oxygen.
    Enriched air production methods.",
    level: "Advanced",
    prerequisites: "Be at least 12 years old
    Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
    included: "Equipment Rental
    Dive Computer Rental
    Gas
    PADI Enriched Air Diver ??? E-Manual
    Logbook
    PADI Certification",
    dives: 5)
  offer_7.user = user
  offer_7.save!

  puts "Offer 7 OK"

  puts "Create offer 8..."



  offer_8 = Offer.new(name: "PADI Deep Diver Course",
    category: "Specialty Training",
    duration: 2,
    unit_duration: "days" ,
    price: 250,
    currency: "USD",
    briefing:"After your first few dives, you may want to visit dive sites that are slightly deeper. Learn to explore those exciting wonders and mysteries between 18 and 40 metres.

    What you will learn:

    The importance of personal limits and ???why dive deep???.
    Specialist equipment required for deep diving.
    Planning, safety, buddy contact procedures and buoyancy control.
    Managing gas supply and gas narcosis awareness.
    This course is often combined with the Sidemount and Nitrox specialities to explore further for longer on our more challenging dive sites.",
    level: "Advanced",
    prerequisites: "Be at least 15 years old
    Be certified as a Advanced Open Water Diver / Adventure Diver, or equivalent from agencies recognized by PADI",
    included: "Equipment Rental
    Dive Computer Rental
    PADI Deep Diver Manual
    Logbook
    PADI Certification",
    dives: 4)
    offer_8.user = user
    offer_8.save!

  puts "Offer 8 OK"

  puts "Create offer 9..."

  offer_9 = Offer.new(name: "PADI Sidemount Diver Course",
    category: "Specialty Training",
    duration: 2,
    unit_duration: "days" ,
    price: 300,
    currency: "USD",
    briefing: "Whether you???re looking to bridge the gap between recreational and technical diving or searching for a new challenge and extended dive times, the Sidemount course is for you. This course teaches flexibility and streamlining through custom gear configuration while focusing on improving trim and fundamental skills in the water.

    This course is often combined with the Deep and Nitrox specialities which allow divers to explore more challenging dive sites.

    What you will learn:

    Benefits of diving with a sidemount configuration
    Properly assemble and configure sidemount scuba diving equipment.
    Trim your weight system and sidemount gear so you???re perfectly balanced in the water.
    Manage gas by switching second stages as planned, if wearing two cylinders.
    Respond correctly to potential problems when sidemount diving.",
    level: "Advanced",
    prerequisites: "Be at least 15 years old
    Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI
    Be certified as a Advanced Open Water Diver / Adventure Diver, or equivalent from agencies recognized by PADI",
    included: "Equipment Rental
    Dive Computer Rental
    PADI Sidemount Manual
    Logbook
    PADI Certification",
    dives: 3)
  offer_9.user = user
  offer_9.save!

  puts "Offer 9 OK"

  puts "Create offer 10..."

  offer_10 = Offer.new(name: "PADI Wreck Diver Course",
    category: "Specialty Training",
    duration: 2,
    unit_duration: "days" ,
    price: 340,
    currency: "USD",
    briefing:"Whether sunk on purpose as an artificial reef or the result of mishap, wrecks open fascinating windows to the past. Most divers find wrecked ships, airplanes and even automobiles nearly irresistible because they???re intriguing to explore, exciting avenues of discovery, and usually teeming with aquatic life. The PADI Wreck Diver course teaches you the ins and outs of rewarding, responsible wreck diving.

    There are many different types of wrecks, some of which are protected by laws that guard their historical and cultural significance. Your training starts by reviewing guidelines for researching and respecting wrecks.

    During four dives you???ll learn:

    Safety considerations for navigating and exploring wrecks.
    Surveying and mapping a wreck.
    Using penetration lines and reels to guide exploration.
    Techniques to avoid kicking up silt or disturbing the wreck and its inhabitants.
    There are many different types of wrecks, some of which are protected by laws that guard their historical and cultural significance. Your training starts by reviewing guidelines for researching and respecting wrecks.",
    level: "Advanced",
    prerequisites:"Be at least 15 years old
    Be certified as a PADI Adventure Diver, PADI Advanced Open Water Diver, or equivalent from agencies recognized by PADI",
    included:"Equipment Rental
    Dive Computer Rental
    PADI Wreck Diver Manual
    Logbook
    PADI Certification",
    dives: 4)
  offer_10.user = user
  offer_10.save!

  puts "Offer 10 OK"

  puts "Create offer 11..."

  offer_11 = Offer.new(name: "PADI Night Diver Course",
    category: "Specialty Training",
    duration: 3,
    unit_duration: "days" ,
    price: 270,
    currency: "USD",
    briefing:"As the sun sets, slip into your dive gear, take a deep breath and back roll into a whole new world of diving. Although you???ve seen the reef many times before, the day creatures retire for the evening and you can watch the nocturnal life under the glow of your dive light.

    While scuba diving at night, you are more focused on what you can see in your light???s beam. Learn dive planning, additional equipment requirements and navigation in the dark. We also teach buoyancy control with less visual reference, and methods for remaining in your buddy team.

    Throughout the three night dives you will practice:

    Light handling and communication techniques.
    Entering, exiting and navigating in the dark.
    Identifying how plants and animals differ or change behavior at night time.",

    level: "Advanced",
    prerequisites:"Be at least 12 years old
    Be certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
    included:"Equipment Rental
    Dive Computer Rental
    Torch Rental
    PADI Night Diver Manual
    Logbook
    PADI Certification",
    dives: 3)
  offer_11.user = user
  offer_11.save!

  puts "Offer 11 OK"

  puts "Create offer 12..."

  offer_12 = Offer.new(name: "PADI Peak Performance Buoyancy Course",
    category: "Specialty Training",
    duration: 1,
    unit_duration: "day" ,
    price: 199,
    currency: "USD",
    briefing:"What is neutral buoyancy? Scuba divers like to be neutrally buoyant so they neither sink nor float. It can be a tricky thing. Divers who???ve mastered the highest performance levels in buoyancy stand apart. You???ve seen them underwater. They glide effortlessly, use less air and ascend, descend or hover, almost as if by thought. They interact gently with aquatic life and affect their surroundings minimally. The PADI Peak Performance Buoyancy course refines the basic skills you learned as a PADI Open Water Diver and elevates them to the next level. Neutral buoyancy is the key to conserving your air consumption and leaving minimal impact on the aquatic environment.

    During two scuba dives, you???ll learn how to:

    Determine the exact weight you need, so you???re not too light or too heavy.
    Trim your weight system and scuba gear so you???re perfectly balanced in the water.
    Streamline to save energy, use air more efficiently and move more smoothly through the water.
    Hover effortlessly in any position ??? vertical or horizontal.",
    level: "Advanced",
    prerequisites:"Be at least 10 years old
    Be certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
    included:"Equipment Rental
    Dive Computer Rental
    Peak Performance Buoyancy Manual
    Logbook
    PADI Certification",
    dives: 3)
  offer_12.user = user
  offer_12.save!

  puts "Offer 12 OK"

  puts "Create offer 13..."

  offer_13 = Offer.new(name: "PADI Search & Recovery Course",
    category: "Specialty Training",
    duration: 2,
    unit_duration: "days" ,
    price: 249,
    currency: "USD",
    briefing:"Have you ever dropped something in the water? Are you looking for lost ???treasure???? The PADI Search and Recovery Diver Specialty course will teach you effective ways to find objects underwater and bring them to the surface. Small, large or just awkward, there is a way to bring them up.

    Gathering information and resources, then carefully planning a search are the first important steps you learn. During four scuba dives you???ll practice:

    Swimming search patterns using your compass and natural navigation.
    Locating large and small objects using various search patterns.
    Using a lift bag for large or heavy objects, plus other recovery methods.
    Planning a search operation based on facts gathered about a lost object prior to the dive.",
    level: "Advanced",
    prerequisites:"Be at least 12 years old
    Be certified as a PADI Advanced Open Water Diver, or equivalent from agencies recognized by PADI. Open Water Divers with a PADI Underwater Navigator certification also qualify",
    included:"Equipment Rental.Dive Computer Rental.Compass Rental.Search and Recovery Manual .Logbook.PADI Certification",
    dives: 4)
  offer_13.user = user
  offer_13.save!

  puts "Offer 13 OK"

  puts "Create offer 14..."

  offer_14 = Offer.new(name: "PADI Project Aware Shark Conservation Specialty Course",
    category: "Specialty Training",
    duration: 1,
    unit_duration: "day" ,
    price: 180,
    currency: "USD",
    briefing:"Sharks are crucial to marine ecosystems, but many shark species are in danger of becoming extinct. This course gives you the opportunity to learn more about sharks, what makes them unique, why they play a crucial role in keeping our ocean healthy and why they are in global decline. You can become a passionate shark defenders help take action to protect sharks.

    This course will:

    Inspire you to become a shark conservation advocate
    Introduce sharks including their conservation status and why they are vulnerable to impacts
    Introduce the major threats that are greatly reducing shark populations
    Provide information on the value of sharks to the marine environment and to local economies
    Introduce you to management approaches that can protect sharks
    Provide a pathway for you to become actively involved in shark conservation
    Show you how to identify hazards in marine environments and on land that threaten sharks.",
    level: "Advanced",
    prerequisites:"Be at least 12 years old.Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
    included:"Equipment Rental.Dive Computer Rental.Project AWARE Shark Conservation Manual.Logbook.PADI Certification",
    dives: 2)
  offer_14.user = user
  offer_14.save!

  puts "Offer 14 OK"

  puts "Create offer 15..."

  offer_15 = Offer.new(name: "PADI Digital Underwater Photographer Course",
    category: "Specialty Training",
    duration: 1,
    unit_duration: "day" ,
    price: 200,
    currency: "USD",
    briefing:"Underwater photography is one of the most popular diving specialities. With so many cameras and housings available, underwater photography is easier and more accessible. The PADI Digital Underwater Photographer course gets you started quickly, whether you???re using a point-and-shoot or a more sophisticated D-SLR like the professionals.

    Throughout the two scuba dives, you???ll discover:

    How to choose the right underwater camera system for you.
    The PADI SEA (Shoot, Examine, Adjust) method for getting great shots quickly.
    Principles for good composition of underwater images.
    Practical techniques to take great photos with your digital camera.",
    level: "Advanced",
    prerequisites:"Be at least 10 years old
    Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
    included:"Equipment Rental
    Dive Computer Rental
    PADI Digital Underwater Photographer Manual
    Logbook
    PADI Certification
    All photos taken during the course
    (Camera rental not included)",
    dives: 2)
  offer_15.user = user
  offer_15.save!

  puts "Offer 15 OK"
end

offer_16 = Offer.new(name: "Fun Dive at Devil's Throat",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing:" Discover the wonderful dive site of Devil's Throat. located in Punta Sur, it is accessible by speedboat. Lots of fishes,sharks and swimthroughs ! ",
  level: "Advanced",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_16.user = user_6
offer_16.save!

puts "Offer 16 OK"

offer_17 = Offer.new(name: "Fun Dive at Shark Point",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing:"Situated on the north-west of Gili Trawangan and sloping off into the Lombok Strait, this dive site has it all: Deep ridges, a drop off to over 50 metres, schools of jack fish, sharks and and a tug boat wreck at 30 meters. Heading closer to shore, the site can get as shallow as 5 meters, where huge numbers of turtles can be found amongst the sea grass and bommies.

  Shark Point is one of the most popular sites around the Gili Islands and is not to be missed. Whether you???re starting out or an experienced diver, we highly recommend this dive site.",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_17.user = user_1
offer_17.save!

puts "Offer 17 OK"

offer_18 = Offer.new(name: "Fun Dive at Tackle Box",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: " Discover the best dive site in San Pedro, filled with corals, sharks and rays.",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_18.user = user_7
offer_18.save!

puts "Offer 18 OK"

offer_19 = Offer.new(name: "Fun Dive at Padangbai",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: " Discover the dive site in Padangbai, filled with corals, sharks and rays.",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_19.user = user_4
offer_19.save!

puts "Offer 19 OK"

offer_20 = Offer.new(name: "Fun Dive at Cenote Ponde Rosa",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: " Discover the cenote Ponde Rosa and it's wonders",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_20.user = user_11
offer_20.save!

puts "Offer 20 OK"

offer_21 = Offer.new(name: "Fun Dive at St.Peter's Pool",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: " Enjoy the underwater wonders Malta has to offer",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_21.user = user_2
offer_21.save!

puts "Offer 21 OK"

offer_22 = Offer.new(name: "Fun Dive at Turtle Heaven",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: "Turtle Heaven is situated on the north east side of Gili Meno. The majority of the dive site is a pinnacle that starts at 10 meters and drops down to 30 meters. It is covered in an abundance of hard and soft corals which make it an ideal habitat for both Hawksbill and Green turtles, as well as many other reef fish.

  There are a number of man made objects as part of a coral propagation project which attracts huge numbers of sea life and makes this site suitable and of interest to all levels of diver.

  If you can???t get enough of turtles check our post about interesting turtle facts.",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_22.user = user_3
offer_22.save!

puts "Offer 22 OK"

offer_23 = Offer.new(name: "Fun Dive at Sunset Reef",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: "Sunset Reef is located on the south-west side of Gili Trawagnan. This gradually sloping reef is suitable for all levels of diver. Covered in both hard and soft corals, it is an ideal home for a variety of marine life including snapper, sweetlips, sharks and turtles. Occasionally Manta Rays can be spotted passing through this site.",
  level: "Beginner",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_23.user = user_3
offer_23.save!

puts "Offer 23 OK"

offer_24 = Offer.new(name: "Fun Dive at Deep Turbo",
  category: "Fun Dive",
  duration: 1,
  unit_duration: "day" ,
  price: 100,
  currency: "USD",
  briefing: "A dive site of epic proportions! With massive coral pinnacles rolling up from the sandy bottom, diving Deep Turbo is like flying through space looking down on the moon. The reef starts at 16 meters where large schools of batfish, red tooth triggerfish and snapper can be seen. Dropping down to 30 meters, the sandy bottom is home to many blue spotted rays and sharks. Search the gorgonian sea fans for pygmy sea horses, and nudibranch fans won???t be disappointed. We recommend diving Deep Turbo on Nitrox.",
  level: "Advanced",
  prerequisites:"Be at least 10 years old
  Certified as a PADI Advanced Open Water Diver, or equivalent from agencies recognized by PADI",
  included:"Equipment Rental
  Dive Computer Rental",
  dives: 2)
offer_24.user = user_1
offer_24.save!

puts "Offer 24 OK"

review_template1 = {
  content: ".",
  rating: 4
}

review_template2 = {
  content: ".",
  rating: 5
}

review_template3 = {
  content: ".",
  rating: 3
}

review_template4 = {
  content: ".",
  rating: 5
}

review_template5 = {
  content: ".",
  rating: 5
}

review_template6 = {
  content: ".",
  rating: 4
}

review_template7 = {
  content: ".",
  rating: 5
}

review_template8 = {
  content: ".",
  rating: 4
}

review_template9 = {
  content: ".",
  rating: 5
}

review_template10 = {
  content: ".",
  rating: 4
}

review_template11 = {
  content: ".",
  rating: 5
}

review_template12 = {
  content: ".",
  rating: 3
}

review_template13 = {
  content: ".",
  rating: 5
}

review_template14 = {
  content: ".",
  rating: 4
}

review_template15 = {
  content: ".",
  rating: 5
}


review_templates = [review_template1, review_template2, review_template3, review_template4, review_template5, review_template6, review_template7, review_template8, review_template9, review_template10, review_template11, review_template12, review_template13, review_template14, review_template15]


User.pro.each do |u|
  10.times do |i|
    puts "Create booking #{i} for #{u.first_name}"
    booking = Booking.new
    booking.offer = u.offers.sample
    booking.start_at = Date.new(2021,12,01)
    booking.end_at = Date.new(2021,12,01)
    booking.user = User.all.sample
    booking.status = "Done"
    booking.save!

    puts "Create review #{i} for #{booking.id}"
    review = Review.new(review_templates.sample)
    review.booking = booking
    review.user = booking.user
    review.save!
    puts "Review #{i} for #{booking.id} done"
  end
end
