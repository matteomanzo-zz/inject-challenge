require 'inject'

describe Array do

  context 'with a block' do
  
    it 'can add numbers' do
      expect([1, 2, 3, 4].inject{|memo, num| memo + num}).to eq 10
      expect([1, 2, 3, 4].matt_inject{|memo, num| memo + num}).to eq 10
    end

    it 'can minus numbers'do

    end

  end
end