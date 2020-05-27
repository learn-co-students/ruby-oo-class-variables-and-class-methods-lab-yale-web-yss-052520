class Song

    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq()
    end

    def self.artists
        @@artists.uniq()
    end

    def self.genre_count
        output = {}
        @@genres.each do |element|
            output[element]||= 0
            output[element] += 1
        end
        output
    end

    def self.artist_count
        output = {}
        @@artists.each do |element|
            output[element]||= 0
            output[element] += 1
        end
        output
    end

end