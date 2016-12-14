require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
also_reload 'lib/**/*.rb'

get '/' do
  @words = Word.all
  erb :index
end

post '/word_form' do
 user_word = params.fetch('user_word')
 user_pOs = params.fetch('user_pOs')
 new_word = Word.new({word: user_word, pOs: user_pOs})
 new_word.save
 erb :success
end

get '/definition/:id' do
  @word = Word.find(params.fetch('id').to_i)
  erb(:definition)
end

post '/definition_form' do
  user_definition = params.fetch('user_definition')
  new_definition = Definition.new({define: user_definition})
  new_definition.save
  erb :success
end
