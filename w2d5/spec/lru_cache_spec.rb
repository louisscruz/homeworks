require "spec_helper"

describe LRUCache do
  subject(:cache) { LRUCache.new(2) }
  let(:first_link) { Link.new("first") }
  let(:second_link) { Link.new("second") }
  let(:third_link) { Link.new("third") }


  describe "#initialize" do
    it "sets the cache size" do
      expect(cache.length).to eq(2)
    end

    it "sets the head to nil" do
      expect(cache.head).to eq(nil)
    end

    it "sets the tail to nil" do
      expect(cache.tail).to eq(nil)
    end
  end

  describe "#add" do
    before(:each) do
      cache.add(first_link)
    end

    it "adds the object to the linked list when blank and makes it the head and tail" do
      expect(cache.head).to eq(first_link)
      expect(cache.tail).to eq(first_link)
    end

    it "adds the object to the linked list when more than 0 links" do
      cache.add(second_link)
      expect(cache.head).to eq(first_link)
      expect(cache.tail).to eq(second_link)
    end

    it "adds the object to the hash" do
      expect(cache.hash["first"]).to eq(first_link)
    end

    it "removes the oldest element if it goes beyond the alotted size" do
      cache.add(third_link)
      expect(cache.head).to eq(second_link)
      expect(cache.tail).to eq(third_link)
    end
  end

  describe "#count" do
    before(:each) do
      cache.add(first_link)
    end

    it "returns the correct size" do
      expect(cache.count).to eq(1)
    end
  end
end
