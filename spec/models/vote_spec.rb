describe Vote do
  describe "validations" do

    before do
      @vote = Vote.create(value: v)
      1.times {@vote(value: 2)}
      1.times {@vote(value: 1)}
      1.times {@vote(value: -1)}
      1.times {@vote(value: -4)}

    describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect(@vote(value: v)).to eq(1 || -1)
      end
    end
    
  end
end
