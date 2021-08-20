puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-1",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-2",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-3",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-4",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-5",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
Student.create(name: "Dennis", age: 20, email: "dennis@gmail.com", cohort_id: c1.id)
Student.create(name: "mike", age: 10, email: "mike@gmail.com", cohort_id: c2.id)
Student.create(name: "jill", age: 21, email: "jill@gmail.com", cohort_id: c5.id)
Student.create(name: "thomas", age: 40, email: "thomas@gmail.com", cohort_id: c1.id)
Student.create(name: "terrissa", age: 420, email: "terrissa@gmail.com", cohort_id: c4.id)
puts "Done!"