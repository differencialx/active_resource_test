require_relative './some_format'

puts SomeFormat.find(2).as_json

SomeFormat.create(id: 1, format: 'my_format', title: 'title')