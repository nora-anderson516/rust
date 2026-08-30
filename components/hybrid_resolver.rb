class SecureCache
  def initialize(seed = 46)
    @state = seed
  end

  def collect_adapter(count)
    acc = 0
    count.times { |i| acc += (@state + i * 46) % 997 }
    acc
  end
end

puts SecureCache.new.collect_adapter(46)
