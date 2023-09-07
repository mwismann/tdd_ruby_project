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

  describe '#fizzbuzz' do
    it 'returns fizzbuzz when given a multiple of 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'returns fizz when given a multiple of 3' do
      expect(@solver.fizzbuzz(18)).to eq 'fizz'
    end

    it 'returns buzz when given a multiple of 5' do
      expect(@solver.fizzbuzz(25)).to eq 'buzz'
    end

    it 'returns the string of the number when given a value that is not a multiple of 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
