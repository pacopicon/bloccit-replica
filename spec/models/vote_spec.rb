require 'rails_helper'

describe Vote do

  # include TestFactories

  describe "validations" do

    # before do
      # user = authenticated_user
      # topic = Topic.create(name: 'Topic name')
      # @post = Post.create(title: 'Post title', body: 'Post bodies must be pretty long', topic: topic, user: user)
      # @vote = @post.votes.create(value: 1)
      # 1.times {@vote.value}
      # @vote = @post.votes.create(value: -1)
      # 1.times {@vote.value}
      # end

    describe "value validation" do
      it "only allows -1 or 1 as values" do
        # expect(@vote.value == 1 || @vote.value == -1).to eq(true)
        # expect(@vote.value == 0 || @vote.value > 1 || @vote.value < -1).to eq(false)
        up_vote = Vote.new(value: 1)
        expect(up_vote.valid?).to eq(true)

        down_vote = Vote.new(value: -1)
        expect(down_vote.valid?).to eq(true)

        invalid_vote = Vote.new(value: 2)
        expect(invalid_vote.valid?).to eq(false)
      end
    end

  end

  describe 'after_save' do
    it "calls 'Post#update_rank' after save" do
      post = associated_post
      vote = Vote.new(value: 1, post: post)
      expect(post).to receive(:update_rank)
      vote.save
    end
  end
end
