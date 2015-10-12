# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brian = User.new
brian.email = "dorton@tiy.com"
brian.password = '123456789'
brian.save

caroline = User.create! email: "cdevine@tiy.com", password: "12345678"
neal = User.create! email: "neal@tiy.com", password: "12345678"

brian.save

swift = Room.new
swift.title = "TSwift Alliance"
swift.description = "Taylor Swift fans unite!"
swift.save

tiy = Room.new
tiy.title = "The Iron Yard"
tiy.description = "A place to talk about yards of iron."
tiy.save

beyhive = Room.new
beyhive.title = "Beyhive"
beyhive.description = "The world's greatest living entertainer needs a group."
beyhive.save

owls = Room.new
owls.title = "1912 Society"
owls.description = "Join our parliament."
owls.save

Comment.create! room: tiy, user: neal, entry: "I love coding!"
Comment.create! room: tiy, user: caroline, entry: "Rails Girls rock on."
Comment.create! room: tiy, user: brian, entry: "Ruby is obviously the best language to learn first."
