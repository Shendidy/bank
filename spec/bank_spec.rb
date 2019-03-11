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
    it 'check responce to report' do
      is_expected.to respond_to(:report)
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
    it 'withdrawel to include date' do
      account = Bank.new
      account.deposit(10, '10/01/2019')
      account.withdraw(5, '11/01/2019')
      expect(account.balance).to eq 5
    end
  end
end

describe 'Reports' do
  context 'shall be issued upon request' do
    account = Bank.new
    account.deposit(1000, '01/01/2019')
    account.withdraw(500, '11/01/2019')
    it 'should show header of report' do
      expect(account.report).to include('date || credit || debit || balance')
    end
    it 'should show date of deposit' do
      account.report
      expect(account.transactions[0]).to include('01/01/2019')
    end
    it 'should show date of withdraw' do
      account.report
      expect(account.balance).to eq 500
      expect(account.transactions[1]).to include('11/01/2019')
    end
  end
end
