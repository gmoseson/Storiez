category1 = Category.create(name: 'Jobs')
category2 = Category.create(name: 'Food')
category3 = Category.create(name: 'Travel')
category4 = Category.create(name: 'New York City')
category5 = Category.create(name: 'Movies')
category6 = Category.create(name: 'Love')
category7 = Category.create(name: 'Family')
category8 = Category.create(name: 'School')
category9 = Category.create(name: 'Animals')
category10 = Category.create(name: 'Movies')

user1 = User.create(email: 'gmoseson@gmail.com', password: 'December12')

Prompt.create([
	{name: "your first job interview", category_id: category1.id},
	{name: "your first pet", category_id: category9.id},
	{name: "your favorite neighborhood in New York City", category_id: category4.id},
	{name: "your first day of school", category_id: category8.id},
	{name: "the best meal you've ever had", category_id: category2.id},
	{name: "the first place you traveled to by yourself", category_id: category3.id},
	{name: "your most unique New York City subway experience", category_id: category4.id},
	{name: "your favorite Arnold Schwarzenegger movie memory", category_id: category3.id},
	{name: "the most comical situation you've been in resulting from a cultural misunderstanding", category_id: category3.id},
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
