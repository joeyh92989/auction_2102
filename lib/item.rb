class Item
  attr_reader :name,
              :bids
  def initialize(name)
    @name = name
    @bids = {}
  end

  def add_bid(attendee, bid)
    @bids[attendee] = bid
  end

  def current_high_bid
    if @bids != {}
        max_bid=  @bids.max_by do |attendee, bid|
          bid
      end
     max_bid[1]
    else
      0
    end
  end
end