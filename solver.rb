class Solver
  def factorial(num)
    raise ArgumentError, 'Negative numbers are not allowed' if num.negative?
    return 1 if num <= 1
    (1..num).reduce(:*)
  end

  def reverse(str)
    str.reverse
  end
end
