# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

#
# Event Type
#
event_types = [
  "Around The World",
  "Escape",
  "Festive Social",
  "Murder Mystery",
  "Play Your Way",
  "Pub Quiz",
  "Team Social",
  "Virtual Away Day"
].freeze
EventType.create(event_types.map { |et| { name: et }})

(Date.today..Date.today + 9.days).each do |date|
  # pick a random hour
  hour = rand(9..16)
  start = date.to_datetime.change(hour: hour)
  finish = start + 2.hours

  # create event
  Event.create!(
    event_type: EventType.all.sample,
    customer: Customer.new(name: Faker::Name.name),
    start: start,
    finish: finish
  )
end
