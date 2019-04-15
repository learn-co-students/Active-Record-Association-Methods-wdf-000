class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    all_artist_names = []
    self.artists.each do |artist|
      all_artist_names << artist.name
    end
    all_artist_names
  end
end
