#require_relative './song.rb'

require 'pry'


# Artist
#   #new
#     is initialized with a name
#   #name
#     has an attr_accessor for name


class Artist 
    attr_accessor :name
    attr_reader :songs 



    def initialize(name)
        @name = name
        @songs = []
    end

#  #songs
#    has many songs  

    def songs 
        Song.all.select {|song| song.artist == self}
    end 


#  #add_song
#   takes in an argument of a song and associates that song with the 
#   artist by telling the song that it belongs to that artist

    def add_song(song)
 #       @songs << song  # HAS MANY
        song.artist = self  # BELONG TO
    end 

#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it 
#     and associates the song and artist

    def add_song_by_name(name)
        name = Song.new(name)
        name.artist = self 
    end 


#   .song_count
#     is a class method that returns the total number of 
#     songs associated to all existing artists 

    def self.song_count 
        Song.all.count
    end 
end 

