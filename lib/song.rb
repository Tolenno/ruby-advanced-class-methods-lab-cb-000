require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    new_song = self.create
    new_song.name = song_name
    new_song
  end

  def self.create_by_name(song_name)
    self.new_by_name(song_name)
  end
end
