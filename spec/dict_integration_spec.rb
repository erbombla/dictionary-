require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('recieves a word') do
    visit('/')
    fill_in("user_word", :with => 'stridency')
    click_button('Add')
  end
end

describe('the definition path', {:type => :feature}) do
  it('recieves a definition') do
    visit('/')
    fill_in("user_word", :with => 'stridency')
    click_button('Add')
  end
end

describe('the dictionary path', {:type => :feature}) do
  it('displays the word and definition') do
    visit('/')
    fill_in("user_word", :with => 'stridency')
    click_button('Add')
  end
end
