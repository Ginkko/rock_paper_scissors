class String
  define_method(:beats?) do |opponent|
    battle = []

    battle.push(self).push(opponent)

    if battle[0].eql?(battle[1])
      return "Tie!"

    elsif battle[0].eql?("rock")


      if battle[1].eql?("paper")
        return "Player2!"
      else
        return "Player1!"
      end

    elsif battle[0].eql?("paper")
      if battle[1].eql?("scissors")
        return "Player2!"
      else
        return "Player1!"
      end

    elsif battle[0].eql?("scissors")
      if battle[1].eql?("rock")
        return "Player2!"
      else
        return "Player1!"
      end

    end



  end
end
