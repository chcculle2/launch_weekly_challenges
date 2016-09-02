class PerfectNumber

  def self.classify(number)
    raise RuntimeError if number <= 1

    sum = (1...number).select { |n| number % n == 0 }.reduce(:+)
    case
      when sum == number then 'perfect'
      when sum < number then 'deficient'
      when sum > number then 'abundant'
    end
  end
end
