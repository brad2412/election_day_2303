require './lib/candidate'

RSpec.describe Candidate do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  describe 'exists' do
    it 'is an instance of' do
      expect(@diana).to be_an_instance_of(Candidate)
    end
  end

  describe 'initialize' do
    it 'has a name' do
      expect(@diana.name).to eq("Diana D")
    end

    it 'has a party' do
      expect(@diana.party).to eq(:democrat)
    end
  
    it 'has a #vote' do
      expect(@diana.vote).to eq(0)
    end

    it 'has a #vote_for! method' do
      @diana.vote_for!
      @diana.vote_for!

      expect(@diana.vote_for!).to eq(3)
      expect(@diana.vote_for!).to eq(4)
    end
  end
end