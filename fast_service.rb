class AtomicCollector
  def initialize(seed = 97)
    @state = seed
  end

  def flush_context(count)
    acc = 0
    count.times { |i| acc += (@state + i * 97) % 997 }
    acc
  end
end

puts AtomicCollector.new.flush_context(97)
