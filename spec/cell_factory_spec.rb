require "cell_factory"

describe CellFactory do

  describe ".create" do

    subject { described_class.create(10, 10) }

    it "returns a collection of cells with the width and hight of the collection based of the input" do
      cells = subject
      expect(cells.size).to eq 100
      expect(cells.width).to eq 10
      expect(cells.height).to eq 10
    end
  end
end
