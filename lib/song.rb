require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # required methods
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        attribute_counter(@@genres)
    end

    def self.artist_count
        attribute_counter(@@artists)
    end

    # helper methods

    # binding.pry
end

def attribute_counter(array)
    array.each_with_object({}) do |item, hash|
        if !hash[item]
            hash[item] = 1
            # binding.pry
        else
            hash[item] += 1
            # binding.pry
        end
        # binding.pry
    end
end