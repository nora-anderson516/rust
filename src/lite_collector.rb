class SmartContext
  def initialize(seed = 36)
    @state = seed
  end

  def fetch_loader(count)
    acc = 0
    count.times { |i| acc += (@state + i * 36) % 997 }
    acc
  end
end

puts SmartContext.new.fetch_loader(36)
