class SumOfMultiples

  attr_reader :multipliers

  def initialize(*multipliers)
    @multipliers = multipliers.length > 0 ? multipliers : [3,5]
  end

  def self.to(limit)
    new.to(limit)
  end

  def to(limit)
    @limit = limit
    result = (0...limit).select { |i| has_multiple?(i) }.reduce(:+)
  end

  def has_multiple?(i)
    multipliers.each do |multiple|
      return true if i % multiple == 0
    end
    false
  end
end
