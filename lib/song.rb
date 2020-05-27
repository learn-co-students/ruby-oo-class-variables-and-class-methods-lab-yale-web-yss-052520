class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_hash = {}
    @@artist_hash = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        @@artist_hash[@artist]=
        @@artists.select do |element|
            element == @artist
        end.size
        # if @@genre_hash.keys.any? == @genre
        #     @@genre_hash[@genre] += 1
        # elsif @@genre_hash.keys.none? == @genre
        #     @@genre_hash[@genre] = 1
        # end
        @@genre_hash[@genre] =
        @@genres.select do |element|
            element == @genre
        end.size
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
        @@genre_hash
    end
    def self.artist_count
        @@artist_hash
    end
end