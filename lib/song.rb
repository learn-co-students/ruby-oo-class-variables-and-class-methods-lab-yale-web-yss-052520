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

    def self.count
        @@count 
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

     def self.hash_count_creator(array)
        hash = {}
        array.each do |element|
            if hash.has_key?(element)
                hash[element] += 1
            else 
                hash[element] = 1
            end
        end
        hash
     end

    def self.genre_count
        Song.hash_count_creator(@@genres)
    end

     def self.artist_count
        Song.hash_count_creator(@@artists)
    end 
             
end