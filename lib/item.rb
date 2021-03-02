class Item
  attr_reader :name,
              :bids
  def initialize(name)
    @name = name
    @bids = {}
    @can_add_bid = true
  end

  def add_bid(attendee, bid)
    if @can_add_bid == true
      @bids[attendee] = bid
    else
    end
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
  def close_bidding
    @can_add_bid = false
  end
end