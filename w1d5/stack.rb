class Stack
  def initialize
    @store = []
  end

  def add(item)
    @store.push(item)
  end

  def remove
    @store.pop
  end

  def show
    @store
  end
end
