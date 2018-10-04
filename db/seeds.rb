# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# User.create(username: "Mike", city: "Washington, DC", experience: "Beginner", goals: "Tone and fit, less cardio", password: "mike")
# User.create(username: "Sasha", city: "Washington, DC", experience: "Experienced", goals: "Upper body only!", password: "sasha")
# User.create(username: "Jan", city: "Washington, DC", experience: "Pro", goals: "Build muscle and endurance", password: "jan")
#
# User.create(username: "Tess", city: "Washington, DC", experience: "Beginner", goals: "Looking for a running partner!", password: "tess")
# User.create(username: "Michael", city: "Washington, DC", experience: "Pro", goals: "Experienced personal trainer, looking for spotting bud", password: "michael")
# User.create(username: "Emily", city: "Washington, DC", experience: "Experienced", goals: "Need leg day buddy!", password: "emily")
#
# Gym.create(name: "Golds DC", hours: "24/7", address: "1700 19th Street NW", city: "Washington, DC", rates: "$25/week", zipcode: '20036')
# Gym.create(name: "Crunch Tenleytown", hours: "Mon-Sat: 5am-10pm, Sun 6am-8pm", address: "5200 Wisconsin Ave", city: "Washington, DC", rates: "$32/week", zipcode: '20036')
#
# Gym.create(name: "Blink DC", hours: "24/7", address: "1700 19th Street NW", city: "Washington, DC", rates: "$25/week", zipcode: '20038')
# Gym.create(name: "LA Fitness Tenleytown", hours: "Mon-Fri: 4am-10pm, Sat-Sun 5am-9pm", address: "200 Massachusettes Avenue", city: "Washington, DC", rates: "$28/week", zipcode: '20037')
#
# Workout.create(start_time: "9:00 AM", end_time: "10:00 PM", description: "Interested in a Zumba partner!", gym_id:1, user_id:3, amigo_id: 6, status: "booked", date: "02/23/18")
# Workout.create(start_time: "3:00 PM", end_time: "4:30 PM", description: "Need a spotter for leg day", gym_id:2, user_id:4, amigo_id: 5, status: "booked", date: "03/03/18")
#
# Workout.create(start_time: "1:00 PM", end_time: "1:30 PM", description: "Want to do abs", gym_id:3, user_id:3, amigo_id: 6, status: "booked", date: "04/10/18")
# Workout.create(start_time: "3:00 PM", end_time: "4:30 PM", description: "love partner workouts!", gym_id:4, user_id:4, amigo_id: 5, status: "booked", date: "06/08/18")
# Workout.create(start_time: "3:00 PM", end_time: "5:00 PM", description: "love partner workouts!", gym_id:4, user_id:2, amigo_id: 5, status: "booked", date: "07/12/18")
# Workout.create(start_time: "6:00 PM", end_time: "7:00 PM", description: "Spotter for chest mostly", gym_id:4, user_id:5, amigo_id: 2, status: "booked", date: "08/30/18")
#
# Workout.create(start_time: "2:00 PM", end_time: "4:00 PM", description: "looking for a treadmill partner!", gym_id:3, user_id:2, amigo_id: 6, status: "completed", date: "09/02/18")
#
# Workout.create(start_time: "2:00 PM", end_time: "3:00 PM", description: "leg day! who's with me??!", gym_id:4, user_id:2, amigo_id: 1, status: "booked", date: "10/18/18")
#
# Workout.create(start_time: "3:00 PM", end_time: "5:00 PM", description: "interested in learning some new ab exercises", gym_id:1, user_id:2, amigo_id: 2, status: "requested", date: "12/20/18")
# #
# GymReview.create(user_id: 2, gym_id: 4, rating: 4, description: "clean and organized! wish they had towels :/", workout_id: 5)
