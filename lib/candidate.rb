class Candidate
  attr_reader :name,
              :party,
              :vote
        

  def initialize(data)
    @name = data[:name]
    @party = data[:party]
    @vote = 0
  end

  def vote
    @vote
  end

  def vote_for!
    @vote += 1
  end

  def register_candidate!
  end
end