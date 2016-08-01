require ('pry-byebug')

class Playlist
  attr_reader :playlist_array

  def initialize
    @playlist_array = []
  end

  def add_song_to_playlist_by_name(library , song_name)
    @playlist_array.push(library.find_song_by_name(song_name))
  end

  def add_song_to_playlist_by_index(selected_library , index)
    @playlist_array.push(selected_library.library[index])#acessing librarying variable in library
  end

  def shuffle_playlist
    @playlist_array.shuffle
  end
end