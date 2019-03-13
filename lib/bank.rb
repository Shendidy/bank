# Class to handle main bank accound methods
class Bank
  attr_accessor :balance, :transactions, :statement

  def initialize
    @balance = 0
    @transactions = []
    @statement = "date || credit || debit || balance\n"
  end

  def deposit(ammount = 0, date = '01/01/1900')
    @balance += ammount
    @transactions.push([date, ammount, nil, @balance])
  end

  def withdraw(ammount = 0, date = '01/01/1900')
    @balance -= ammount
    @transactions.push([date, nil, ammount, @balance])
  end

  def report
    @transactions.reverse_each do |trns|
      @statement += (trns.join(' || ') + "\n\n")
    end
    @statement
  end

  def print_statement
    report
    puts @statement
  end
end
