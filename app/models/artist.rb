class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.map {|song| song.genre}.first
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.select {|song| song.artist == self}.length
  end

  def genre_count
    #return the number of genres associated with the artist
    self.songs.select {|song| song.genre}.length
  end
end
