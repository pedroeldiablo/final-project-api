["users", "places", "walks", "stops"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

mike = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
})

emily = User.create!({
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
})

# old = Place.create!({
#   name:"Old Spike Roastery",
#   address:"54 Peckham Rye, London SE15 4JR",
#   image:"",
#   lat:51.4668672,
#   lng:-0.0746862,
#   google_place_id:"ChIJ38iF2JgDdkgRzJQFAk0l7Vo",
#   created_at: "2015-01-01",
#   updated_at: "2015-01-01",
#     })
#
#   pedler = Place.create!({
#   name:"Pedler",
#   address: "58 Peckham Rye, London SE15 4JR",
#   image:"",
#   lat:51.4650705,
#   lng:-0.068924,
#   google_place_id:"ChIJ38iF2JgDdkgRzJQFAk0l7Vo",
#   created_at: "2015-01-01",
#   updated_at: "2015-01-01"
# })
#
# slg = Place.create!({
# 	address: "65-67 Peckham Rd, London SE5 8UH",
# 	name: "South London Gallery",
#   image:"",
# 	lat: 51.4741624,
# 	lng: -0.0819076,
# 	google_place_id: "ChIJfXIhyHcDdkgRm9-vm8XIgeA"
# })
#
# sunday = Place.create!({
#   address: "12-16 Blenheim Grove, London SE15 4QL",
# 	name: "The Sunday Painter",
# 	image: "",
# 	lat: 51.4696396,
# 	lng: -0.07143867,
# 	google_place_id: "ChIJ38iF2JgDdkgRzJQFAk0l7Vo"
# })
#
# bar = Place.create!({
# 	address: "213 Blenheim Grove, London SE15 4QL",
# 	name: "Bar Story",
# 	image:"",
# 	lat: 51.469552,
# 	lng: -0.0721367,
# 	google_place_id: "ChIJfXIhyHcDdkgRm9-vm8XIgeA"
# })
#
# # walk1 = Walk.create!({
# #   name:"Saturday Morning in Peckham",
# #   description:"Taking a gentle stroll through South London's art scene.",
# #   date: "2016-12-12",
# #   user: mike
# # })
# #
# # walk2 = Walk.create!({
# #   name:"Stocking Up for a BBQ Peckham",
# #   description:"What, where and how to throw the perfect BBQ in Peckham/ East Dulwich.",
# #   date: "2016-12-12",
# #   user: mike
# # })
# #
# # walk3 = Walk.create!({
# #   name:"BBQ Busting Peckham",
# #   description:"Food, drink, fire and fun in South London",
# #   date: "2016-12-12",
# #   user: emily
# # })
#
#
# stop1 = Stop.create!({
#   purpose:"Brunch with a paper and catch-up. Coffee to get us going",
#   position: 1,
#   image:"",
#   public: true,
#   user: mike,
#   place: pedler
# })
#
# # walk1.stops << stop1
# #
# stop2 = Stop.create!({
#   purpose:"Short walk and then the first of the artist endeavours. A little bit tucked away by the station, but well worth the effort. If you're running late, we can just start here and grab a coffee next door. Great exhibion on Gillian Lowndes and post-war art",
#   position: 2,
#   image:"",
#   public: true,
#   user: mike,
#   place: sunday
# })
#
# stop3 = Stop.create!({
#   purpose:"I need to grab some treats for the next weekend, so going to grab some Fatties Salted Caramels, and maybe a canelle for the walk?",
#   position: 3,
#   image:"",
#   public: true,
#   user: mike,
#   place: general
# })
#
# stop4 = Stop.create!({
#   purpose:"Okay, I'm not going to lie it's a little bit of a walk away, but it's a relaxing walk past some beautiful Georgian houses. Roman Ondak at the SLG and if the weather is nice maybe sit out in the gardens",
#   position: 4,
#   image:"",
#   public: true,
#   user: mike,
#   place: slg
# })
#
# stop5 = Stop.create!({
#   purpose:"Early dinner and a couple of glasses of wine. If you feel like a cocktail or two maybe head to BarStory for happy hour between 6-7pm",
#   position: 5,
#   image:"",
#   public: true,
#   user: mike,
#   place: artusi
# })
#
# stop6 = Stop.create!({
#   purpose:"Drink, dance, see where we get to",
#   position: 6,
#   image: "",
#   public: true,
#   user: mike,
#   place: bar
# })
