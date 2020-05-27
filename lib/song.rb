require 'pry'
class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@genres.push(genre)
        @@artists.push(artist)

    end

    def self.count
        @@count
    end

    def self.genres
    # Creates a deep copy of @@genres. ->unnecessay because uniq doesn't change the orig array
    #    cpy = []
    #     @@genres.each{|genre|
    #         cpy.push(genre)
    #     }
    #    cpy.uniq

    @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash = {}

        @@genres.each{|genre|
        # binding.pry
            hash.key?(genre)?  hash[genre] +=1 : hash[genre] = 1
        }
        hash
    end

    def self.artist_count
        hash = {}

        @@artists.each{|artist|
        # binding.pry
            hash.key?(artist)?  hash[artist] +=1 : hash[artist] = 1
        }
        hash
    end
end