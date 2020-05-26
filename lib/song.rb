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
        all = []
        @@genres.each do |genre|
          if !all.include?(genre)
            all << genre
          end
        end
        all 
    end

    def self.artists
        all = []
        @@artists.each do |artist|
          if !all.include?(artist)
            all << artist
          end
        end
        all
    end 

    def self.genre_count 
        genre_count = Hash.new(0)
        @@genres.each do |genre| 
            genre_count[genre] += 1
        end 
        genre_count
    end 

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each do 
            |artist| artist_count[artist] += 1
        end
        artist_count 
    end 
end 