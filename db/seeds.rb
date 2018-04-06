# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
  {first_name: "Nadine", last_name: "Javier", email: "nad4ne@gmail.com", password: "password", location: "SF", bio: "Creator of this app" }, 
  {first_name: "Test", last_name: "Tester", email: "test@test.com", password: "password", location: "SF", bio: "I am a test user"},
  {first_name: "Grilled", last_name: "Cheesuz", email: "grilledcheesuz@gmail.com", password: "password", location: "SF", bio: "Super cheesy and irresistible!"}])

Event.create!([
  {title: "Yoga for Cancer", address: "Mission Yoga", description: "Bikram yoga to fund breast cancer!", start_time: "2018-03-29 21:30:00", end_time: "2018-03-29 21:30:00", hosted_by: 1, complete: false},
  {title: "Ocean Beach Clean Up", address: "Ocean Beach", description: "Clean up the beach and hangout!", start_time: "2018-03-29 21:30:00", end_time: "2018-03-29 21:30:00", hosted_by: 3, complete: false}, 
  {title: "The Great San Francisco Charity Scavenger Hunt", address: "Mission District 620 Treat Ave San Francisco, CA 94110", description: "Scavenger Hunt for charity", start_time: "2017-07-19 23:49:20", end_time: "2017-07-19 23:49:20", hosted_by: 1, complete: false},
  {title: "Petcube Rescue Block Party [w/SF SPCA]", address: "Spark Social", description: "Raise the woof for the world's biggest rescue dog party!", start_time: "2017-07-19 23:49:20", end_time: "2017-07-19 23:49:20", hosted_by: 1, complete: false}])

Category.create!([{title: 'Animals', image: "http://www.ispca.ie/uploads/events/Events-Page-Pic.jpg"}, {title: 'Environment', image: "https://www.memphisdailynews.com/Editorial_Images/21389.jpg"}, {title: 'Education', image: "http://archive.epicgapyear.com/wp-content/uploads/2014/08/school-volunteer-project-fiji-volunteering-education-community-epic-gap-year.jpg"}, {title: 'Arts and Culture', image: "http://www.catamountarts.org/media/cache/vdw_media_album_thumbnail/assets/media/default/0001/01/fda7299474a84eb1a3cec0413f2829deca2420d1.jpeg"}, {title: 'Community', image: "https://crowdvoice-production-bucket.s3.amazonaws.com/uploads/voice/background/83/alg_gay-civil-rights-protest.jpg"}, {title: 'Fundraising', image: "http://maestrosoft.com/images/ideas/ideas-home.jpg"}, {title: 'Volunteer', image: "https://media.blueshieldca.com/wp-content/uploads/2016/02/FoodBank.jpg"}])


UserEvent.create!([
  {user_id: 1, event_id: 2}, {user_id: 2, event_id: 1}, {user_id: 2, event_id: 2}, {user_id: 2, event_id: 3}])
