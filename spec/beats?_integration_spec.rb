require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

 describe('the rock paper scissors path', {:type => :feature}) do
   it('accepts multiple user inputs and determines a winner') do
     visit('/')
     fill_in('player1', :with => "rock")
     fill_in('player2', :with => "rock")
     click_button('Play!')
     expect(page).to have_content('Tie!')
   end
