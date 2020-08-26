require './lib/room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_value?
    @price.gsub(/\D/, '').to_i > 500_000
  end

  def rooms_from_category(room_type)
    @rooms.find_all { |room| room.category == room_type} 
  end
end
