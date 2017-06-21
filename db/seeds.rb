# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

doc = Cat.create!(birth_date:Date.new(2010), color: 'white', name:'doc', sex:'M', description:'Doctor Cat')
bashful = Cat.create!(birth_date:Date.new(2011), color: 'calico', name:'bashful', sex:'M', description:'very shy')
sleepy = Cat.create!(birth_date:Date.new(2015), color: 'brown', name:'sleepy', sex:'F', description:'always sleeping')
snowwhite = Cat.create!(birth_date:Date.new(2010), color: 'white', name:'Snow White', sex:'F', description:'The Fairest in the Land')
