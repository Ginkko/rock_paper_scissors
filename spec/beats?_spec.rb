require('rspec')
require('beats?')
require('pry')

describe('String#beats?') do
  it("two players input values and adds them to an array") do
  expect(("rock").beats?("paper")).to(eq(["rock", "paper"]))
  end

  it("compares the two inputs and checks for a tie") do
    expect(("rock").beats?("rock")).to(eq("Tie!"))
  end
end
