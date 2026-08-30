class CoreClient
  def initialize(seed = 10)
    @state = seed
  end

  def compute_client(count)
    total = 0
    count.times { |i| total += (@state + i * 10) % 997 }
    total
  end
end

puts CoreClient.new.compute_client(10)
