# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Mike", city: "Washington, DC", experience: "Beginner", goals: "Tone and fit, less cardio")
User.create(username: "Sasha", city: "Washington, DC", experience: "Experienced", goals: "Upper body only!")
User.create(username: "Jan", city: "Washington, DC", experience: "Pro", goals: "Build muscle and endurance")

User.create(username: "Tess", city: "Washington, DC", experience: "Beginner", goals: "Looking for a running partner!")
User.create(username: "Michael", city: "Washington, DC", experience: "Pro", goals: "Experienced personal trainer, looking for spotting bud")
User.create(username: "Emily", city: "Washington, DC", experience: "Experienced", goals: "Need leg day buddy!")

Gym.create(name: "Golds DC", hours: "24/7", location: "1700 19th Street NW", city: "Washington, DC", rates: "$25/week")
Gym.create(name: "Crunch Tenleytown", hours: "Mon-Sat: 5am-10pm, Sun 6am-8pm", location: "5200 Wisconsin Ave", city: "Washington, DC", rates: "$32/week")

Gym.create(name: "Blink DC", hours: "24/7", location: "1700 19th Street NW", city: "Washington, DC", rates: "$25/week")
Gym.create(name: "LA Fitness Tenleytown", hours: "Mon-Fri: 4am-10pm, Sat-Sun 5am-9pm", location: "200 Massachusettes Avenue", city: "Washington, DC", rates: "$28/week")

Workout.create(start_time: "9:00 AM", end_time: "10:00 PM", description: "Interested in a Zumba partner!", gym_id:1, user_id:2, amigo_id: nil, status: "requested")
Workout.create(start_time: "3:00 PM", end_time: "4:30 PM", description: "Need a spotter for leg day", gym_id:2, user_id:3, amigo_id: nil, status: "requested")

Workout.create(start_time: "1:00 PM", end_time: "1:30 PM", description: "Want to do abs", gym_id:3, user_id:3, amigo_id: 6, status: "booked")
Workout.create(start_time: "3:00 PM", end_time: "4:30 PM", description: "love partner workouts!", gym_id:4, user_id:4, amigo_id: 5, status: "requested")
Workout.create(start_time: "3:00 PM", end_time: "5:00 PM", description: "love partner workouts!", gym_id:4, user_id:2, amigo_id: 5, status: "booked")
Workout.create(start_time: "6:00 PM", end_time: "7:00 PM", description: "Spotter for chest mostly", gym_id:4, user_id:5, amigo_id: 2, status: "booked")
