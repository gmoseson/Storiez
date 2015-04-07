category1 = Category.create(name: 'Firsts')
category2 = Category.create(name: 'Food')
category3 = Category.create(name: 'Travel')
user1 = User.create(email: 'greta@example.com', password: 'password')

Prompt.create([
	{name: "your first job interview", category_id: category1.id},
	{name: "your first childhood memory", category_id: category1.id},
	{name: "your first job interview", category_id: category1.id},
	{name: "your first day of school", category_id: category1.id},
	{name: "the best meal you've had in a foreign country", category_id: category2.id},
	{name: "the first time you traveled by yourself", category_id: category3.id},
	{name: "the most foreign experience you've had in a different place", category_id: category3.id},
])

Story.create(body: 'hi russell', user_id: user1.id, prompt_id: Prompt.first.id)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
