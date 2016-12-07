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
  new_word = Word.new({word: params[:new_word], pOs: params[:pOs]})
  new_word.save
  erb :word_success
end
