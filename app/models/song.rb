class Song < ActiveRecord::Base
  belongs_to :artist

  def song_count
    Song.all.count
  end
end
