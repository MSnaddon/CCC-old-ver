require("Minitest/autorun")
require("Minitest/rg")
require_relative("../song_library")
require_relative("../playlist")


class TestPlaylist < Minitest::Test
  def setup
    @silly_songs = SongLibrary.new("Silly songs",[
    {
      :title => "I've got a lovely bunch of coconuts",
      :artist => "Billy Cotton",
      :time => 3
      },
      {
        :title => "Nyan cat",
        :artist => "saraj00n",
        :time => 10
      }])

    @serious_songs = SongLibrary.new("Serious songs",[
      {
        :title => "Safety Dance",
        :artist => "Men Without Hats",
        :time => 3
      },
      {
        :title => "Mad World",
        :artist => "Gary Jules",
        :time => 3
      }])
    @playlist = Playlist.new()
  end 

  def test_add_song_to_playlist_by_index
    @playlist.add_song_to_playlist_by_index(@serious_songs,1)  
    assert_equal([{
        :title => "Mad World",
        :artist => "Gary Jules",
        :time => 3
      }],@playlist.playlist_array)
  end

  def test_add_song_to_playlist
    @playlist.add_song_to_playlist_by_name( @silly_songs, "Nyan cat")

    assert_equal([{
        :title => "Nyan cat",
        :artist => "saraj00n",
        :time => 10
      }],@playlist.playlist_array)
  end 

end