class LRUCache
  attr_reader :length, :head, :tail, :hash

  def initialize(length)
    @length = length
    @hash = {}
    @head = nil
    @tail = nil
  end

  def count
    # returns number of elements currently in cache
    @hash.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @head == nil
      @head = el
      @tail = el
    elsif count < @length
      @tail.next = el
      @tail = el
    else
      #@
    end
    @hash[el.value] = @tail
  end

  def show
    # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!

end
