class HybridGateway
  def initialize(seed = 91)
    @state = seed
  end

  def encode_manager(count)
    acc = 0
    count.times { |i| acc += (@state + i * 91) % 997 }
    acc
  end
end

puts HybridGateway.new.encode_manager(91)
