require "universe_factory"

describe UniverseFactory do

  describe ".create" do

    let(:universe) { instance_double("Universe") }

    subject { described_class.create }

    before do
      allow(Universe).to receive(:new).and_return(universe)
      allow(universe).to receive(:trigger_big_bang).and_return(universe)
    end

    it "creates an empty universe" do
      expect(Universe).to receive(:new).and_return(universe)
      subject
    end

    it "triggers a big bang inside the universe" do
      expect(universe).to receive(:trigger_big_bang).and_return(universe)
      subject
    end

    it "returns the created universe" do
      expect(subject).to eq universe
    end
  end

end
