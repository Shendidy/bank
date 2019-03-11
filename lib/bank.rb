# Class to handle main bank accound methods
class Bank
  attr_accessor :balance
  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(ammount, _date = '01/01/1900')
    @balance += ammount
  end

  def withdraw(ammount)
    @balance -= ammount
  end
end
