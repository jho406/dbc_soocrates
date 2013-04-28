# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cohort = Cohort.create(:name=>"admin")
cohort = Cohort.create(:name=>"golden bears")
user = cohort.users.create(:email=>"j@j.com", :password=>"test", :password_confirmation=>"test")

phase1 = cohort.phases.create(:title=>"MODELING (PHASE 1)")
phase2 = cohort.phases.create(:title=>"WEB (PHASE 2)")
phase3 = cohort.phases.create(:title=>"RAILS (PHASE 3)")

phase1.units.create(:title=>"Week 1: Ruby")
phase1.units.create(:title=>"Week 2: OO Design")
phase1.units.create(:title=>"Week 3: Databases")
phase2.units.create(:title=>"Week 4: Web Fundamentals")
phase2.units.create(:title=>"Week 5: Front-End")
phase2.units.create(:title=>"Week 6: Web Apps")
phase3.units.create(:title=>"Week 7: Rails Crash Course")
phase3.units.create(:title=>"Week 8: Wargames")
phase3.units.create(:title=>"Week 9: Final Projects")

user.created_challenges.create(:title=>"Deaf Grandma Challenge", :body=>"test")

unit = Unit.first.challenges
unit << user.created_challenges.create(:title=>"Deaf Grandma Challenge", :body=>"test")
unit << user.created_challenges.create(:title=>"Deaf Grandma Challenge1", :body=>"test")
unit << user.created_challenges.create(:title=>"Deaf Grandma Challenge2", :body=>"test")
unit << user.created_challenges.create(:title=>"Deaf Grandma Challenge3", :body=>"test")

