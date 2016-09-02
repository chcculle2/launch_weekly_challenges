class Octal

  attr_reader :decimal

  def initialize(octal)
    @octal = octal.to_s.each_char.map(&:to_i)
  end

  def to_decimal
    decimal = [2,3,3]
    myoctal = 0
    i = 0
    while(decimal.length > 0)
      myoctal += decimal.pop * 8 ** i
      i = i+1
    end
  end
end
