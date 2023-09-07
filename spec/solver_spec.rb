require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'returns the factorial of a number' do
      expect(@solver.factorial(5)).to eq 120
      expect(@solver.factorial(6)).to eq 720
      expect(@solver.factorial(7)).to eq 5040
      expect(@solver.factorial(8)).to eq 40_320
    end

    it 'retunrs 1 when given 0' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'returns an exception when given a negative number' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of a string' do
      expect(@solver.reverse('hello')).to eq 'olleh'
      expect(@solver.reverse('world')).to eq 'dlrow'
      expect(@solver.reverse('hello world')).to eq 'dlrow olleh'
    end
  end
end
