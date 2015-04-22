require('rspec')
require('beats?')
require('pry')

describe('String#beats?') do
  it("player 1 inputs value and returns an array") do
  expect(("rock").beats?("paper")).to(eq([false]))
  end
end
