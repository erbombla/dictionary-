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
   user_word = params[:user_word]
   new_word = Word.new({word: params[:user_word]})
   new_word.save
   erb :index
end

get '/definition/:word' do
  @word = Word.find_word(params[:word])
  erb :definition
end

post '/definition_form' do
  user_def = params[:user_definition]
  new_def = Definition.new({define: user_definition})
  Word.find_word(params[:definition_id]).save_definiton(new_definition)
  erb :definition
end
