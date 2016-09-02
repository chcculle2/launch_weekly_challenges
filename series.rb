class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits.each_char.map(&:to_i)
  end

  def slices(slice_size)
    raise ArgumentError, "Slice size is too big" if slice_size > @digits.length
    result = []
    (0..digits.length - slice_size).each do |i|
      result << digits.slice(i, slice_size)
    end
    result
  end
end
