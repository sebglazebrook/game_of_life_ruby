require "father_time"

describe FatherTime do

  subject(:instance) { described_class.new }

  describe "#start" do

    subject { instance.start }

    it "starts ticking" do
      expect(instance.tick_count).to be 0
      subject
      expect(instance.tick_count).to be > 0
    end

    context "after each tick" do

      context "when there is an on tick callback" do

        before do
          instance.on_tick do
            @callback_called = true
          end
        end

        after { @callback_called= false }

        it "calls the on tick callback" do
          subject
          expect(@callback_called).to be true
        end
      end
    end
  end
end
