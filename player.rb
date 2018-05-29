class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    if @gold_coins % 10 == 0
      level_up
    else
      @gold_coins += 1
    end
  end

  def do_battle(damage)
    @health_points - damage
    if @health_points < 1
      @lives -= 1
      @healthpoints = 10
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end



end

player1 = Player.new
puts player1.level_up
puts player1.do_battle(11)
