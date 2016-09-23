class Link
  attr_reader :value, :next, :prev
  def initialize(value, next_link = nil, prev_link =  nil)
    @value = value
    @next = next_link
    @prev = prev_link
  end

  def next=(link)
    @next = link
  end

  def prev=(link)
    @prev = link
  end
end
