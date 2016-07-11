class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    songs.map {|song| song.artist}.uniq.count
  end

  def all_artist_names
    songs.map {|song| song.artist.name}
  end
end
