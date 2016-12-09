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
 @user_word = params.fetch('user_word')
 @user_definition = params.fetch('user_definition')
 @user_pOs = params.fetch('user_pOs')
 @new_word = Word.new({word: @user_word})
 @new_word.save
 @new_definition = Definition.new({definition: @user_definition, pOs: @pOs})
 @new_definition.save
 @words = Word.all
 erb :success
end

get '/word_form/:id' do
  @displayed_id = params.fetch('id').to_i
  @displayed = Word.find(@displayed_id)
  @displayed_pOs = Definition.find(params.fetch('id').to_i())
  erb :definition
end
