class Auction
  attr_reader :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
  def item_names
    @items.map do |item|
      item.name
    end
  end
  def unpopular_items
    @items.find_all do |item|
      item.bids == {}
    end
  end
  def potential_revenue
    @items.sum do |item|
      item.current_high_bid
    end
  end
  def popular_items
    @items.find_all do |item|
      item.bids != {}
    end
  end
  def bidders
    names = []
    
    popular_items.each do |items|
      items.bids.keys.each do |bid|
        names.push(bid.name)
      end
    end
    names.uniq!
  end
  # def bidder_info
  #   # bidder_info = {}
  #   @items.each do |item|
  #     item.bids.keys
  #   end
  # end
end