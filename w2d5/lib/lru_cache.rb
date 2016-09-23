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

    if count == @length
      p @head
      @head = @head.next
      @tail.next = el
      p @head
    elsif @head.nil?
      @head = el
      @tail = el
    else
      # @head = @head.next
      @tail.next = el
    end
    @tail = el
    @hash[el.value] = @tail

  end

  def show
    # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!

end
