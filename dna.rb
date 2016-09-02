class DNA

  attr_reader :reference

  def initialize(reference)
    @reference = reference.chars
  end

  def hamming_distance(strand)
    strand.chars.each_with_index.select { |point, index| point != reference[index] }.length
  end
end
