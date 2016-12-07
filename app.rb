require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
also_reload 'lib/**/*.rb'

get '/dictionary' do
  @words = Word.all
  erb :dictionary
end

get '/' do
  @words.all
  erb :dictionary
end

get '/words/new' do
  erb :word_form
end

post '/words' do
  new_word = Word.new({word_title: params[:new_word]})
  new_word.save
  erb :word_success
end

get '/dictionary/:id' do
  @word = Word.find_word(params[:id])
  erb :definition_form
end

get '/dictionary/:id/new_definition' do
  @word = Word.find_word(params[:id])
  erb :definition_form
end

post '/definition' do
  @word = Word.find_word(params[:id])
  new_definition = Definition.new({pOs: params[:pOs], definition: params[:definition]})
  @word.add_definition(new_definition)
  new_definition.save
  erb :definiton_success
end

get 'definition' do
  erb :word
end
