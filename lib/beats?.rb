class String
  define_method(:beats?) do |opponent|

    if self.eql?(opponent)
      return "Tie!"
    elsif self.eql?("rock")
      if opponent.eql?("paper")
        return "Player 2!"
      else
        return "Player 1!"
      end
    elsif self.eql?("paper")
      if opponent.eql?("scissors")
        return "Player 2!"
      else
        return "Player 1!"
      end
    elsif self.eql?("scissors")
      if opponent.eql?("rock")
        return "Player 2!"
      else
        return "Player 1!"
      end
    end
  end
end
