class String
  define_method(:beats?) do |opponent|
    battle = []

    battle.push(self).push(opponent)

    if battle[0].eql?(battle[1])
      return "Tie!"


    end



  end
end
