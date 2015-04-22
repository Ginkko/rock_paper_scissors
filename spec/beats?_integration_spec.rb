require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

 describe('the rock paper scissors path', {:type => :feature}) do

   it('accepts inputs of rock rock and determines tie') do
     visit('/')
     #  Old text field input
     #  fill_in('player1', :with => 'rock')
     #  fill_in('player2', :with => 'rock')
     select 'Rock', from: "player1"
     select 'Rock', from: "player2"
     click_button('Play!')
     expect(page).to have_content('Tie!')
   end
#  Extra integration test - unnecessary.
#  it('accepts inputs of rock paper and determines player2 win') do
#    visit('/')
#    fill_in('player1', :with => 'rock')
#    fill_in('player2', :with => 'paper')
#    click_button('Play!')
#    expect(page).to have_content('Player2!')
#  end
 end
