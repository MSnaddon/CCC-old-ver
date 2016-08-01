require("minitest/autorun")
require("minitest/rg")
require_relative("../song_library")

class TestSongLibrary < MiniTest::Test

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
  end

  def test_get_song_hash
    assert_equal({
        :title => "I've got a lovely bunch of coconuts",
        :artist => "Billy Cotton",
        :time => 3
        },@silly_songs.library[0])
  end

  def test_find_song_by_name
    assert_equal({
          :title => "Nyan cat",
          :artist => "saraj00n",
          :time => 10
          },@silly_songs.find_song_by_name("Nyan cat"))
  end

  def test_get_list_of_songs_and_artists
    titles, artists = @silly_songs.list_of_titles_and_artists()
    assert_equal(["I've got a lovely bunch of coconuts","Nyan cat"], titles)
    assert_equal(["Billy Cotton","saraj00n"], artists)
  end

  # def add_song_to_library

  # end
end