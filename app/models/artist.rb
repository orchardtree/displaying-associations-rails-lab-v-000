class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    Song.all.count
  end
end
