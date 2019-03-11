require 'bank'

describe Bank do
  context 'initial context' do
    it 'check responce to deposit' do
      is_expected.to respond_to(:deposit)
    end
    it 'check responce to withdraw' do
      is_expected.to respond_to(:withdraw)
    end
    it 'check responce to balance' do
      is_expected.to respond_to(:balance)
    end
  end
end

describe 'Bank accounts' do
  context 'using bank account' do
    it 'user can check current balance' do
      account = Bank.new
      expect(account.balance).to eq 0
    end
    it 'user can deposit into it' do
      account = Bank.new
      account.deposit(10)
      expect(account.balance).to eq 10
    end
    it 'user can withdraw from it' do
      account = Bank.new
      account.deposit(10)
      account.withdraw(5)
      expect(account.balance).to eq 5
    end
  end
end

describe 'Dates' do
  context 'shall be added to transactions' do
    it 'deposit to include date' do
      account = Bank.new
      account.deposit(10, '10/01/2019')
      expect(account.balance).to eq 10
    end
  end
end
