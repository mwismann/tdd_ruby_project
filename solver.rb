class Solver
  def factorial(num)
    raise ArgumentError, 'Negative numbers are not allowed' if num.negative?
    return 1 if num <= 1
    (1..num).reduce(:*)
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end
