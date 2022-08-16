# File: lib/track.rb

class Track
    def initialize(title, artist) # title and artist are both strings
        @title = title
        @artist = artist
    end

    def title
        return @title.to_s # Returns the title as a string
    end

    def artist
        return @artist.to_s
    end

    def format
        return p "Track: " + @title.to_s + " - Artist: " + @artist.to_s # Returns a string of the form "TITLE by ARTIST"
    end
end