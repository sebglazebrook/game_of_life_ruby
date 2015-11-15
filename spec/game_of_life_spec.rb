require "game_of_life"

describe GameOfLife do

  describe ".start" do

    let(:universe) { instance_double("Universe") }
    let(:universe_view) { instance_double("UniverseView") }

    subject { described_class.start }

    before do
      allow(UniverseFactory).to receive(:create).and_return(universe)
    end

    it "creates a universe" do
      expect(UniverseFactory).to receive(:create).and_return(universe)
      subject
    end

    it "sends the new universe to the universe viewer" do
      expect(UniverseView).to receive(:new).with(universe).and_return(universe_view)
      subject
    end
  end
end
