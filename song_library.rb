require ('pry-byebug')
class SongLibrary

  attr_reader :library, :genre
  
  def initialize(genre, songs_array)
    @genre = genre
    @library = songs_array
  end

  def find_song_by_name(find_title)
    return @library.find {|song_hash| song_hash[:title] == find_title}
  end

  def list_of_titles_and_artists()
    titles = []
    artists = []
    binding.pry
    @library.each{|song| titles << song[:title]; artists << song[:artist]}
    return titles, artists
  end

end