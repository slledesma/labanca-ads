
class Game

  def roll(param)
   @score||= 0
   @score += param	
  end


  def score
	@score
  end
end

