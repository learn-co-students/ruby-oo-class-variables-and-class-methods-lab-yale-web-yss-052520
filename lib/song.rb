class Song 
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

    attr_accessor :name, :artist, :genre
    
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
        hist = {}
        self.genres.each do |key|  
            hist[key] = @@genres.count(key)
        end 
        hist 
    end 

    def self.artist_count 
        hist = {}
        self.artists.each do |key| 
            hist[key] = @@artists.count(key)
        end 
        hist
    end 
end 


