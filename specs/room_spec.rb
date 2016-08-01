require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song_library")
require_relative("../guests")
require_relative("../playlist")


class TestRooms < Minitest::Test
  def setup
    @songlib = SongLibrary.new("Funk",[{:title => "Ooh ya", :artist => "Dave",:time => 2}])
    @playlist = Playlist.new
    @guest1 = Guest.new("Jazolt Valony", 200)
    @guest2 = Guest.new("Leimily Susaig",  25)

    @room1 = Room.new(5, 25)
  end

  def test_room_has_max_capacity
    assert_equal(5,@room1.capacity)
  end
  def test_assign_playlist_to_room
    @playlist.add_song_to_playlist_by_name(@songlib,"Ooh ya")
    @room1.assign_playlist_to_room(@playlist)
    assert_equal([{:title => "Ooh ya", :artist => "Dave",:time => 2}],@room1.playlist.playlist_array)
  end
  def test_assign_guests_to_room
    @room1.assign_guest_to_room(@guest1)
    assert_equal(@room1.guests[0].name,"Jazolt Valony")
  end

  def test_clear_room
    @room1.assign_guest_to_room(@guest1)
    @room1.clear_room()
    assert_equal(0, @room1.guests.count)
    assert_equal(nil, @room1.playlist)
  end

end
