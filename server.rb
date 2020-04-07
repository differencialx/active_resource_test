# myapp.rb
require 'sinatra'
require 'sinatra/json'

get '/some_formats/:id' do |id|
  json({ id: id, title: 'title', format: 'my_format' }) 
end

post 'some_formats' do
  json({ id: 1, title: 'title', format: 'my_format' })
end