require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/word_form' do
  @words = Word.all()
  erb :entries
end

post '/word_form' do
 user_word = params.fetch('user_word')
 Word.new({word: user_word}).save()
 @words = Word.all()
 erb :entries
end

get '/word_form/:id/definition_form/new' do
  @word = Word.find(params.fetch('id').to_i())
  erb :definition_form
end

get '/entries/:id' do
  @word = Word.find(params.fetch('id').to_i())
  @define = @words.define()
  erb :definition_form
end

post '/definition_form' do
  @word = Word.find(params.fetch('word_id').to_i())
  definition = params.fetch('user_definition')
  pOs = params.fetch('user_pOs')
  @word.save(Definition.new({define: definition}))
  @define = @word.define.()
  erb :entries
end
