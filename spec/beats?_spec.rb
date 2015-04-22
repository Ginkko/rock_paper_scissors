require('rspec')
require('beats?')
require('pry')

#Below is inital spec. No longer passes as core method has changed.
# describe('String#beats?') do
#   it("two players input values and adds them to an array") do
#   expect(("rock").beats?("paper")).to(eq(["rock", "paper"]))
#   end
describe('String#beats?') do

  it("compares the two inputs and checks for a tie") do
    expect(("rock").beats?("rock")).to(eq("Tie!"))
  end

  it("compares the two inputs and checks for player1 'rock' vs player2 'scissors'") do
    expect(("rock").beats?("scissors")).to(eq("Player1!"))
  end

  it("compares the two inputs and checks for player1 'rock' vs player 2 'paper'") do
    expect(("rock").beats?("paper")).to(eq("Player2!"))
  end
  

end
