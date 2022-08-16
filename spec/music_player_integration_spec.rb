# File: spec/music_player_integration_spec.rb

require "music_library"
require "track"
require "music_player"

RSpec.describe "Music Player Integration" do
    it "gets all tracks" do
        library = MusicLibrary.new
        track_1 = Track.new("Carte Blanche", "Veracocha")
        track_2 = Track.new("Synaesthesia", "The Thrillseekers")
        library.add(track_1)
        library.add(track_2)
        expect(library.search_by_title("Carte")).to eq [track_1]
    end

    it "gets all tracks" do
        library = MusicLibrary.new
        track_1 = Track.new("Carte Blanche", "Veracocha")
        track_2 = Track.new("Synaesthesia", "The Thrillseekers")
        library.add(track_1)
        library.add(track_2)
        expect(library.search_by_title("Carte")).to eq [track_1]
    end

    it "gets all tracks" do
        library = MusicLibrary.new
        track_1 = Track.new("Carte Blanche", "Veracocha")
        track_2 = Track.new("Synaesthesia", "The Thrillseekers")
        track_3 = Track.new("Saoko", "Rosalía")
        library.add(track_1)
        library.add(track_2)
        library.add(track_3)
        expect(library.search_by_title("aok")).to eq [track_3]
    end
    
    it "gets all tracks" do
        library = MusicLibrary.new
        track_1 = Track.new("Carte Blanche", "Veracocha")
        track_2 = Track.new("Synaesthesia", "The Thrillseekers")
        library.add(track_1)
        library.add(track_2)
        expect(library.search_by_title("zzz")).to eq []
    end

    it "gets all tracks" do
        track = Track.new("Carte Blanche", "Veracocha")
        expect(track.format).to eq "Track: Carte Blanche - Artist: Veracocha"
    end
    # ...
end

# File: spec/music_player_spec.rb

RSpec.describe MusicPlayer do
    it "constructs" do
        library = MusicLibrary.new
        track_01 = Track.new("Prada", "Arca")
        track_01.format
        expect(track_01.format).to eq "Track: Prada - Artist: Arca"
        library.add(track_01)
        track_02 = Track.new("Rakata", "Arca")
        track_02.format
        expect(track_02.format).to eq "Track: Rakata - Artist: Arca"
        library.add(track_02)
        track_03 = Track.new("A Palé", "Rosalía")
        expect(track_03.format).to eq "Track: A Palé - Artist: Rosalía"
        library.add(track_03)
        track_04 = Track.new("Crow", "Forest Swords")
        expect(track_04.format).to eq "Track: Crow - Artist: Forest Swords"
        library.add(track_04)
        expect(library.search_by_title("ow")).to eq [track_04]
    end
    # ...
end