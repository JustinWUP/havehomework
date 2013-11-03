# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Content.create([{title: 'Home', body: 'this is the home page'}])
Subject.create(
	[{name: 'Math'},
	{name: 'English'},
	{name: 'Reading'},
	{name: 'Science'},
	{name: 'Social Studies'},
	{name: 'History'},
	{name: 'Geography'},
	{name: 'Biology'},
	{name: 'Chemistry'},
	{name: 'Health'},
	{name: 'Music'},
	{name: 'Art'},
	{name: 'Computers'}])
