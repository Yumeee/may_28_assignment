class BankAccount
  def initialize(balance, interest)
    @balance = balance
    @interest_rate = interest
  end

  def deposit(amount)
    return @balance + amount
  end

  def withdraw(amount)
    return @balance - amount
  end

  def gain_interest
    return @balance + @interest_rate
  end
end
