require "spec_helper"

describe Link do
  subject(:link) { Link.new("test") }

  describe "#initialize" do
    it "sets a value" do
      expect(link.value).to eq("test")
    end

    it "sets prev to nil" do
      expect(link.prev).to eq(nil)
    end

    it "sets next to nil" do
      expect(link.next).to eq(nil)
    end
  end

  describe "#next=" do
    let(:next_link) { double("link", next: nil, prev: nil) }

    it "sets next" do
      link.next = next_link
      expect(link.next).to eq(next_link)
    end
  end

  describe "#prev=" do
    let(:prev_link) { double("link", next: nil, prev: nil) }

    it "sets prev" do
      link.prev = prev_link
      expect(link.prev).to eq(prev_link)
    end
  end
end
