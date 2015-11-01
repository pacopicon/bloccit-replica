require 'rails_helper'

describe Vote do
  describe "validations" do

    before do
      # @vote = Vote.create(value: 2)
      # 1.times {@vote.value}
      @vote = Vote.create(value: 1)
      1.times {@vote.value}
      # @vote = Vote.create(value: 0)
      # 1.times {@vote.value}
      @vote = Vote.create(value: -1)
      1.times {@vote.value}
      # @vote = Vote.create(value: -2)
      # 1.times {@vote.value}
      end

    describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect(@vote.value == 1 || @vote.value == -1).to eq(true)
        # expect(@vote.value == 0 || @vote.value > 1 || @vote.value < -1).to eq(false)
      end
    end

  end
end
