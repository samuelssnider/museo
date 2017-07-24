require './lib/museum'
require 'pry'
class Curator
  attr_reader :museums,
              :photographs,
              :artists
  def initialize
    @museums = []
    @photographs = []
    @artists = []
  end

  def add_museum(hash)
    other_hash = {id: (@museums.count + 1)}
    final = hash.merge(other_hash)
    museum = Museum.new(final)
    @museums << museum
  end

  def add_artist(hash)
    final = hash.merge({id: (@artists.count + 1)})
    artist = Artist.new(final)
    @artists << artist
  end


end
