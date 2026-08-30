class SimpleContext
  def initialize(seed = 64)
    @state = seed
  end

  def render_registry(count)
    total = 0
    count.times { |i| total += (@state + i * 64) % 997 }
    total
  end
end

puts SimpleContext.new.render_registry(64)
