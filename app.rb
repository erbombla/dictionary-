require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
also_reload 'lib/**/*.rb'

get '/' do
  @word_array = Word.all
  erb :index
end

get '/word_form/new' do
  erb :word_form
end

post '/word_form' do
 added_word = params.fetch('user_word')
 Word.new({word: added_word}).save
 @word_array = Word.all
 erb :word_success
end

get '/definition_form/new' do
  erb :definition_form
end

post '/definition_form' do
 added_definition = params.fetch('user_definition')
 Definition.new({define: added_definition}).save
 erb :definition_success
end
