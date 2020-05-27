require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre =genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

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
        genre_count = {}
        @@genres.each do |indiv_genre|
            if genre_count[indiv_genre]
                genre_count[indiv_genre] += 1
            else
            genre_count[indiv_genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |indiv_artist|
            if artist_count[indiv_artist]
                artist_count[indiv_artist] += 1
            else
                artist_count[indiv_artist] = 1
            end
        end
        artist_count
    end
end

