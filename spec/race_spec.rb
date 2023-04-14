require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  before(:each) do
    @race= Race.new("Texas Governor")
  end

  describe 'exists' do
    it 'is an instance of' do
      expect(@race).to be_an_instance_of(Race)
    end
  end

  describe 'initialize' do
    it 'has a name' do
      expect(@race.office).to eq("Texas Governor")
    end

    it 'has canidates' do 
      expect(@race.candidates).to eq([])
    end
  end

  describe '#register_candidate! method' do
    it 'can register candidates' do
      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
      @race.register_candidate!
      expect(@register_candidate).to eq[{name: "Diana D", party: :democrat}]
    end
  end
end