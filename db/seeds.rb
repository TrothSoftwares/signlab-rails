# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Agent1 = Agent.create(name: 'Select Agent', contactname: 'Agent one Contact Name ' , contactno: 'Agent one contactno' , othcontactno: 'Agent one Othcontactno' ,othrefdetails:'Agent one  oth ref details')
Agent2 = Agent.create(name: 'Agent Two Name', contactname: 'Agent Two contact name' , contactno: 'Agent Two contactno' , othcontactno: 'Agent Two othcontactno' ,othrefdetails:'Agent Two oth ref details')
Customer1 = Customer.create(name: 'Select Customer', contactname: 'Customer One contact name' , contactno: 'Customer One contactno' , othcontactno: 'Customer One othcontactno', othrefdetails:'Customer One oth ref details')
Customer2 = Customer.create(name: 'Customer Two', contactname: 'Customer One contact name' , contactno: 'Customer One contactno' , othcontactno: 'Customer One othcontactno', othrefdetails:'Customer One oth ref details')

Itemtype1 = Itemtype.create(name: '3D Fab. letter');
Itemtype2 =Itemtype.create(name: 'Al. Light box');
Itemtype3 =Itemtype.create(name: 'Uni-pole');
Itemtype4 =Itemtype.create(name: 'Identity Sign');
Itemtype5 =Itemtype.create(name: 'Custom Sign');
Itemtype6 =Itemtype.create(name: 'Light box');
Itemtype7 =Itemtype.create(name: 'Marketing Fence');
Itemtype8 =Itemtype.create(name: 'Suspension Sign');
Itemtype9 =Itemtype.create(name: 'Exhibit');
Itemtype10 =Itemtype.create(name: 'Vinyl Crafting');
Itemtype11 =Itemtype.create(name: 'Flex Sign');
Itemtype12 =Itemtype.create(name: 'Elect. Maint.');
Itemtype13 =Itemtype.create(name: 'Traffic Sign');
Itemtype14 =Itemtype.create(name: 'sign Structure');
Itemtype15 =Itemtype.create(name: 'CNC/Plotter Work');
Itemtype16 =Itemtype.create(name: 'Corporate Sign');
Itemtype17 =Itemtype.create(name: 'Pylon');
Itemtype18 =Itemtype.create(name: 'Safety sign');
Itemtype19 =Itemtype.create(name: 'Totem');
Itemtype20 =Itemtype.create(name: 'LED Panel Sign');
Itemtype22 =Itemtype.create(name: 'Site Project Sign');
Itemtype23 =Itemtype.create(name: 'Display Stand');
Itemtype24 =Itemtype.create(name: 'Acrylic Stand');
Itemtype25 =Itemtype.create(name: 'ACP Background');
Itemtype26 =Itemtype.create(name: 'Other (outdoor)');
Itemtype27 =Itemtype.create(name: 'Flex Replace');
Itemtype28 =Itemtype.create(name: 'Direction Sign');
Itemtype29 =Itemtype.create(name: 'Sign Shifting');
Itemtype30 =Itemtype.create(name: 'Height Sign');
Itemtype31 =Itemtype.create(name: '3D Cut letter');
Itemtype32 =Itemtype.create(name: 'Al. Profile Sign');
Itemtype33 =Itemtype.create(name: 'Mopi');
Itemtype34 =Itemtype.create(name: 'Push through');
Itemtype35 =Itemtype.create(name: 'Clip frame');
Itemtype36 =Itemtype.create(name: 'Hoarding Sign');
Itemtype37 =Itemtype.create(name: 'ACP Box');
Itemtype38 =Itemtype.create(name: 'Promotion Sign');
Itemtype39 =Itemtype.create(name: 'Banner Sign');
Itemtype40 =Itemtype.create(name: 'Sign Cleaning');
Itemtype41 =Itemtype.create(name: 'Category Sign');
Itemtype42 =Itemtype.create(name: 'Flag Sign');
Itemtype43 =Itemtype.create(name: 'Other (indoor)');


Jobtype1 = Jobtype.create(name: 'Production')
Jobtype2 =Jobtype.create(name: 'Installation')
Jobtype3 =Jobtype.create(name: 'Civil')
Jobtype4 =Jobtype.create(name: 'Transport')
Jobtype5 =Jobtype.create(name: 'Crane')
Jobtype6 =Jobtype.create(name: 'Tools and Equipment / rentals')
Jobtype7 =Jobtype.create(name: 'Others')




User1 = User.create(email: 'admin@test.com', password: 'password' ,role:'admin')
User2 =User.create(email: 'designer@test.com', password: 'password' ,role:'designer')
User3 =User.create(email: 'siteworker@test.com', password: 'password' , role: 'siteworker')
User4 =User.create(email: 'secretary@test.com', password: 'password' , role: 'secretary')
User5 =User.create(email: 'om@signlab.com', password: 'password' , role: 'om')
User6 =User.create(email: 'gm@signlab.com', password: 'password' , role: 'gm')
User7 =User.create(email: 'is@signlab.com', password: 'password' , role: 'is')
User8 =User.create(email: 'ps@signlab.com', password: 'password' , role: 'ps')


#
# Project1 = Project.create(name: 'TestPro1' , location: 'KSA' , customer: Customer1 , agent: Agent1 , status: 'created' , duedate: Date.today.next_month )
#
# Project2 = Project.create(name: 'TestPro2' , location: 'KSA' , customer: Customer1 , agent: Agent1 , status: 'started' , duedate: Date.today.next_month )
#
# Enquiry1 = Enquiry.create(date: Date.today , no: 1 , project: Project1)
# Quotation1 = Quotation.create(date: Date.today , subject: "Test Subject" , body: "We are pleased to quote out lowest rate for the sign required as per the detailed discussion with us. We have also taken into consideration, as you are one of our esteemed customer. We are quoting this competitive rate." , project: Project1,  payment: "60% Advance balance and 40% up on completion" , delivery: "With 30 days from the date of confirmation and advance payment" , power: "220V power supply should be provided near the sign for fixing.", storetext: "Store facility of working materials should be provided", note: "All legal and official permit should be provided. External network, electrical and civil work should be done from customer side")
#
# Enquiry2 = Enquiry.create(date: Date.today , no: 2 , project: Project2)
# Quotation2 = Quotation.create(date: Date.today , subject: "Test Subject" , body: "We are pleased to quote out lowest rate for the sign required as per the detailed discussion with us. We have also taken into consideration, as you are one of our esteemed customer. We are quoting this competitive rate." , project: Project2,  payment: "60% Advance balance and 40% up on completion" , delivery: "With 30 days from the date of confirmation and advance payment" , power: "220V power supply should be provided near the sign for fixing.", storetext: "Store facility of working materials should be provided", note: "All legal and official permit should be provided. External network, electrical and civil work should be done from customer side")
