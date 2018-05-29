class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 0
  end



  def deliver(start_address, end_address)
    papers_delivered = end_address - start_address
    @experience += papers_delivered
    if papers_delivered > @quota
      # over_quota = @quota - papers_delivered
      # under_quota = @quota - over_quota
      # @earnings += 0.25 * under_quota
      # @earnings += 0.5 * over_quota
      total = (0.25 * @quota) + (0.5 *(papers_delivered - @quota))
      @earnings += total

      return total
    elsif papers_delivered <= @quota
      @earnings += 0.25 * papers_delivered
    end
  end

  def quota
    @quota += 50 + (@experience/2)
    return @quota
  end


  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

  def experience
    return @experience
  end

end

tommy = Paperboy.new("Tom")
p tommy.quota
tommy.deliver(1, 50)

puts tommy.report

puts tommy.experience

tommy.deliver(1, 30)

puts tommy.report
