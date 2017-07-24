class Photograph
  attr_reader :name,
              :artist_id,
              :museum_id,
              :year,
              :id
  def initialize(hash)
    @name = hash[:name]
    @artist_id = hash[:artist_id]
    @museum_id = hash[:museum_id]
    @year = hash[:year]
    @id = 1
  end
end
