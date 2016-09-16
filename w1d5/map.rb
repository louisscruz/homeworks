class Map
  def initialize
    @store = []
  end

  def assign(key, value)
    index = @store.index { |pair| pair.first == key }
    index.nil? ? @store.push([key, value]) : @store[index] = [key, value]
    @store
  end

  def lookup(key)
    pair = @store.find { |arr| arr.first == key }
    pair.nil? ? nil : pair.last
  end

  def remove(key)
    index = @store.index { |pair| pair.first == key }
    index.nil? ? nil : @store.delete_at(index)
  end

  def show
    @store
  end
end
