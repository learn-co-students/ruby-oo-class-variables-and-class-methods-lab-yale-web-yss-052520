class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(song_name, artist, genre)
		@name = song_name
		@artist = artist
		@genre = genre

		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.count
		return @@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.generic_count(array)
		array_histogram = {}
		array.each { |category|
			if array_histogram[category]
				array_histogram[category] += 1
			else
				array_histogram[category] = 1
			end
		}
		return array_histogram
	end

	def self.genre_count
		self.generic_count(@@genres)
	end

	def self.artist_count
		self.generic_count(@@artists)
	end
end