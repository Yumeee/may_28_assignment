class  Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    elsif @meal_time > 12
      return "#{@meal_time - 12} PM"
    elsif @meal_time == 12
      return "#{@meal_time} PM"
    end
  end


  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end

end



felix = Cat.new("Felix", "fish", 18)
hello_kitty = Cat.new("Hello Kitty", "sweets", 12)

puts felix.eats_at
puts felix.meow
puts hello_kitty.meow
