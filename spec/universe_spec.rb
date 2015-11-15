describe Universe do

  let(:god) { instance_double("God") }
  let(:time) { instance_double("FatherTime") }

  subject(:instance) { described_class.new }

  before do
    allow(God).to receive(:instance).and_return(god)
    allow(FatherTime).to receive(:new).and_return(time)
    allow(time).to receive(:on_tick)
    allow(time).to receive(:start)
  end

  describe "upon instantiation" do

    it "create time" do
      expect(FatherTime).to receive(:new).and_return(time)
      subject
    end

    it "sets the universe to evolve as time ticks" do
      expect(time).to receive(:on_tick) # with universe evolve callback
      subject
    end
  end

  describe ".trigger_big_bang" do

    let(:cells) { instance_double("Cells") }

    subject { instance.trigger_big_bang }

    before do
      allow(CellFactory).to receive(:create).with(4,4).and_return(cells)
    end


    it "creates all the cells of the universe" do
      expect(CellFactory).to receive(:create).with(4,4).and_return(cells)
      subject
      expect(instance.cells).to eq cells
    end

    it "seeds the universe with some alive cells" do
      expect(Seeder).to receive(:seed).with(cells)
      subject
    end

    it "starts the universe clock" do
      expect(time).to receive(:start)
      subject
    end

  end
end
