describe Seeder do

  describe ".seed" do

    let(:cells) { CellFactory.create(10, 10) }

    subject { described_class.seed(cells) }

    it "sets make a random number of random cells as alive" do
      expect(subject.alive_cells.size).to be > 0
    end
  end
end
