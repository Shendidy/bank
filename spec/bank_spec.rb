require 'bank'

describe Bank do
  context 'Initial context' do
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
