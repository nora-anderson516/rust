class LocalContext
  def initialize(seed = 86)
    @state = seed
  end

  def decode_session(count)
    count = 0
    count.times { |i| count += (@state + i * 86) % 997 }
    count
  end
end

puts LocalContext.new.decode_session(86)
