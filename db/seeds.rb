# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Day.create(name: Date.new.strftime('%A'), date: Date.new())
Day.create(name: 4.days.ago.strftime('%A'), date: 4.days.ago)
Day.create(name: 3.days.ago.strftime('%A'), date: 3.days.ago )
# Day.create(name: 2.days.ago.strftime('%A'), date: 2.days.ago )
# Day.create(name: 1.days.ago.strftime('%A'), date: 1.days.ago )
# Day.create(name: Date.today.strftime('%A'), date: Date.today )


Type.create(name: "No Type")
Type.create(name: "Urgent")
Type.create(name: "Personal")
Type.create(name: "Work")
Type.create(name: "Not Urgent")

Note.create(name: "Fishing", description: "we going fishing at this day", day_id:1, type_id:1)
Note.create(name: "Surfing", description: "hit da waves", day_id:2, type_id:2)
Note.create(name: "cat sitting", description: "looking after pussies", day_id:3, type_id:3)
