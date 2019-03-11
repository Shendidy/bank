# Class to handle main bank accound methods
class Bank
  attr_accessor :balance, :transactions, :statement
  def initialize(balance = 0, transactions = [], statement = '')
    @balance = balance
    @transactions = transactions
    @statement = statement
  end

  def deposit(ammount, date = '01/01/1900')
    @balance += ammount
    @transactions.push([date, ammount, nil, @balance])
  end

  def withdraw(ammount, date = '01/01/1900')
    @balance -= ammount
    @transactions.push([date, nil, ammount, @balance])
  end

  def report
    @statement = "date || credit || debit || balance\n"
    @transactions.reverse.each do |trns|
      @statement += (trns[0] + " || " + trns[1].to_s + " || " + trns[2].to_s + " || " + trns[3].to_s + "\n")
    end
    @statement
  end

  def statement
    report
    puts @statement
  end
end
