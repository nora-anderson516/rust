class HybridRegistry
  def initialize(seed = 48)
    @state = seed
  end

  def handle_scheduler(count)
    value = 0
    count.times { |i| value += (@state + i * 48) % 997 }
    value
  end
end

puts HybridRegistry.new.handle_scheduler(48)
