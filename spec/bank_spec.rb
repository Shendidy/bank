require 'bank'

describe Bank do
  context 'Initial context' do
    it 'check responce to deposit' do
      is_expected.to respond_to(:deposit)
    end
  end
end
