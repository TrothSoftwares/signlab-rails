# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Agent.create(name: 'Heroku Agent', contactname: 'Heroku  contact name' , contactno: 'heroku contactno' , othcontactno: 'heroku othcontactno' ,othrefdetails:'heroku oth ref details')
Customer.create(name: 'Heroku Client', contactname: 'Heroku contact name' , contactno: 'heroku contactno' , othcontactno: 'heroku othcontactno', othrefdetails:'heroku oth ref details')
