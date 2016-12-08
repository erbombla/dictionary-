# require 'capybara/rspec'
# require './app'
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('/', {:type => :feature}) do
#   it('prompts user to add more words') do
#     visit('/')
#     click_button('Add Word')
#     expect(page).to have_content('Personal Dictionary Your Dictionary Saved Words Add Word')
#   end
# end
#
# describe('/word_form', {:type => :feature}) do
#   it('recieves a word from the user') do
#     visit('/word_form')
#     fill_in('word', :with => 'stridency')
#     click_button('Add')
#     expect(page).to have_content('output')
#   end
# end
#
# describe('/definition_form', {:type => :feature}) do
#   it('recieves a definition from the user') do
#     visit('/definition/stridency')
#     fill_in('definition', :with => 'presenting a point of view in a forceful way')
#     fill_in('pOs', :with => 'noun')
#     click_button('Add')
#     expect(page).to have_content('output')
#   end
# end
