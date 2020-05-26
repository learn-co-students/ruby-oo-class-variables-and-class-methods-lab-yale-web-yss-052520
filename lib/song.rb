class Song 

    # Class Variables
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

    # Class Methods
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
        @@genres.each do |genre| #using enumerables and ternary operators
            genre_count[genre].nil? ? genre_count[genre] = 1 : genre_count[genre] += 1
        end 
        genre_count
    end 

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            artist_count[artist].nil? ? artist_count[artist] = 1 : artist_count[artist] += 1
        end
        artist_count
    end  
end 