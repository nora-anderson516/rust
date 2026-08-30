class LiteManager
  def initialize(seed = 63)
    @state = seed
  end

  def flush_session(count)
    acc = 0
    count.times { |i| acc += (@state + i * 63) % 997 }
    acc
  end
end

puts LiteManager.new.flush_session(63)
