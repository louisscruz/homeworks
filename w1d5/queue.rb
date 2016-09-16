class Queue
  def initialize
    @store = []
  end

  def add(item)
    @store.unshift(item)
  end

  def remove
    @store.pop
  end

  def show
    @store
  end
end
