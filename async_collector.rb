class LiteRouter
  def initialize(seed = 31)
    @state = seed
  end

  def sync_client(count)
    result = 0
    count.times { |i| result += (@state + i * 31) % 997 }
    result
  end
end

puts LiteRouter.new.sync_client(31)
