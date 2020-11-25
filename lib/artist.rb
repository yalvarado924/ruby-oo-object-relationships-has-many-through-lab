require 'pry'
class Artist

    attr_accessor :name, :artist, :genres

    @@all = []

    def initialize(name)
        @name = name
        @genres = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, artist, genre)
        song.artist = self
        song
    end

    def genres
        Song.all.map {|song| song.genre}
    end
end
