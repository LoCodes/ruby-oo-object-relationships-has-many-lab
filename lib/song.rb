class Song 

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def artist_name 
        artist.name if artist

    end 
end 

# Song
#   #new
#     is initialized with an argument of a name
#     pushes new instances into a class variable called @@all upon initialization
#   @@all
#     is a class variable set to an array
#   .all
#     is a class method that returns an array of all song instances that have been created
#   #name
#     has a name
#   #artist
#      belongs to an artist
#   #artist_name
#      knows the name of its artist
#      returns nil if the song does not have an artist