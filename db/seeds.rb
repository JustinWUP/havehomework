# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Content.create([{title: 'Home', body: 'this is the home page'}])
Subject.create(
	[{title: 'Math'},
	{title: 'English'},
	{title: 'Reading'},
	{title: 'Science'},
	{title: 'Social Studies'},
	{title: 'History'},
	{title: 'Geography'},
	{title: 'Biology'},
	{title: 'Chemistry'},
	{title: 'Health'},
	{title: 'Music'},
	{title: 'Art'},
	{title: 'Computers'}])
