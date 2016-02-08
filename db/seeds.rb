# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'faker'
seed_multiplier = 1

employees = []
(10 * seed_multiplier).times do |i|
  u = Employee.create( { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  email: Faker::Internet.email} )
  employees << u
end

teams = []
(10 * seed_multiplier).times do |i|
  t = Team.create( name: Faker::Lorem.word )
  teams << t
end

progress_reports = []
(40 * seed_multiplier).times do |i|
  p = ProgressReport.create( body: Faker::Lorem.paragraph )
  progress_reports << p
end



employees.each { |employee| employee.save }
teams.each { |team| team.save }
progress_report.each { |progress_report| progress_report.save }


