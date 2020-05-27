class Song 
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1 
        @@genres << @genre 
        @@artists << @artist 
    end 
    attr_accessor :name 
    attr_accessor :artist 
    attr_accessor :genre  

    @@count = 0 
    @@genres = []
    @@artists = [] 
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
        helper_counter(@@genres) 
    end
    def self.artist_count 
        helper_counter(@@artists) 
    end 
    def self.helper_counter(h_array)
        final_hash = {} 
        h_array.uniq.each do |one_genre|
            final_hash[one_genre] = h_array.count {|og| og == one_genre} 
        end 
        final_hash 
    end 
end 
