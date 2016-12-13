# require 'capybara/rspec'
# require './app'
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('/', {:type => :feature}) do
#   it('prompts user to create new entry') do
#     visit('/')
#     click_button('Add')
#     expect(page).to have_content('New Entry')
#   end
# end
#
# describe('/word_form', {:type => :feature}) do
#   it('recieves a word from the user') do
#     visit('/word_form')
#     fill_in('user_word', :with => 'stridency')
#     click_button('Add')
#     expect(page).to have_content('output')
#   end
# end
#
# describe('/definition_form', {:type => :feature}) do
#   it('recieves a definition from the user') do
#     visit('/definition/stridency')
#     fill_in('user_definition', :with => 'presenting a point of view in a forceful way')
#     fill_in('user_pOs', :with => 'noun')
#     click_button('Add')
#     expect(page).to have_content('output')
#   end
# end
