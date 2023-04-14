'./lib/candidate'

class Race < Candidate
  attr_reader :office,
              :candidates


  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
    @candidates << candidate = super(name, party)
  end
end