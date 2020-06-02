class Song
    
    attr_accessor :name, :artist, :genre
    @@all = [] 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash[genre] ||= 0
            hash[genre] += 1
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash[artist] ||= 0
            hash[artist] += 1
        end
        hash
    end
end



