require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  def test_it_can_be_initailized
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert photograph
    assert_instance_of Photograph, photograph
  end

  def test_its_attributes_can_be_got
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
    assert_equal 4, photograph.artist_id
    assert_equal 2, photograph.museum_id
    assert_equal 1954, photograph.year
    # assert_equal 1, photograph.id
  end
end
