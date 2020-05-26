require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(title, artist, genre)
        @name = title
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    def self.count()
        @@count
    end

    def self.artists()
        @@artists.uniq()
    end

    def self.genres()
        @@genres.uniq()
    end

    def self.genre_count()
        self.generate_hist(@@genres)
    end

    def self.artist_count()
        self.generate_hist(@@artists)
    end

    def self.generate_hist(array)
        hash = Hash[array.uniq.collect{|v| [v, array.count(v)]}]
    end

end

