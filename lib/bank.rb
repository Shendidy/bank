# Class to handle main bank accound methods
class Bank
  attr_accessor :balance
  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(ammount)
    @balance += ammount
  end

  def withdraw; end
end
