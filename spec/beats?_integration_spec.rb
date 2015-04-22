require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the rock paper scissors path', {:type => :feature}) do
  it('accepts multiple user inputs and determines a winner') do
    visit('/')
    fill_in('winner', :with => ['rock', 'paper'])
    click_button('Send')
    expect(page).to have_content('Player 1 Wins')
  end
end
