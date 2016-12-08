require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
also_reload 'lib/**/*.rb'

get '/' do
  @words = Word.all
  erb :index
end

get '/word_form/new' do
  erb :word_form
end

 post '/word_form' do
   new_word = Word.new({word: params[:user_word]})
   new_word.save
   erb :index
end

get '/index/:id' do
  @word = Word.find_word(params[:id])
  erb :index
end

get '/index/:id/new_definition' do
  @word = Word.find_word(params[:id])
  erb :definition_form
end

post '/definition/_form' do
  @word = Word.find_word(params[:id])
  new_definition = Definition.new({pOs: params[:pOs], definition: params[:definition]})
  @word.add_definition(new_definition)
  new_definition.save
  erb :index
end

get 'definition' do
  erb :word
end
