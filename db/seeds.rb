50.times do |n|
  first_name  = Faker::Name.first_name
  last_name  = Faker::Name.first_name
  email = Faker::Internet.email
  password = "password"
  service_branch = "Army"
  birthday = Faker::Date.birthday(18, 65)

  @user = User.create!(
               first_name:  first_name,
               last_name: last_name,
               email: email,
               password: password,
               service_branch: service_branch,
               birthday: birthday)
end

User.count do |user|
  #Nutrition
  meal_name = Faker::Food.dish
  quality_nutrition = Faker::Number.between(1, 3)

  #Sleep
  duration_sleep = Faker::Number.between(1, 10)
  times_awake = Faker::Number.between(1, duration_sleep)
  quality_sleep = Faker::Number.between(1, 3)

  #Exercise
  type = "Karate"
  duration_activity = 3600
  intensity = Faker::Number.between(1, 3)

  Nutrition.create!(
      meal_name: meal_name,
      quality: quality_nutrition,
      user_id: user.id
  )
  Sleep.create!(
      duration: duration_sleep,
      times_awake: times_awake,
      quality: quality_sleep,
      user_id: user.id
  )
  Exercise.create!(
      name: type,
      duration: duration_activity,
      intensity: intensity,
      user_id: user.id
  )
end