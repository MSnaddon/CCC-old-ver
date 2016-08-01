require "pry-byebug"
require_relative "guests"
require_relative "playlist"


class Room
  attr_reader :capacity, :playlist, :price, :guests

  def initialize(capacity, price)
    @capacity = capacity
    @price = price
    @guests = []
  end

  def assign_guest_to_room(guest)
    @guests.push(guest)
  end

  def assign_playlist_to_room(playlist)
    @playlist = playlist
  end

  def clear_room
    @guests = []
    @playlist = nil
  end
end