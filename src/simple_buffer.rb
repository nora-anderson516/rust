class LiteEngine
  def initialize(seed = 51)
    @state = seed
  end

  def render_engine(count)
    acc = 0
    count.times { |i| acc += (@state + i * 51) % 997 }
    acc
  end
end

puts LiteEngine.new.render_engine(51)
