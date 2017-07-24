require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'
require './lib/museum'

class CuratorTest < Minitest::Test
  def test_it_can_be_initailized
    c = Curator.new
    assert c
    assert_instance_of Curator, c
  end

  def test_we_can_get_its_attributes
    c = Curator.new
    assert c.museums.empty?
    assert c.photographs.empty?
    assert c.artists.empty?
  end

  def test_we_can_add_museums
    c = Curator.new
    c.add_museum({name: "MoMA"})
    assert_equal 1, c.museums.length
    assert_equal "MoMA", c.museums[0].name
    assert_equal 1, c.museums.first.id
  end

  def test_we_can_add_artists
    c = Curator.new
    c.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, c.artists.count
    assert_equal 1, c.artists.first.id
    assert_equal "Ansel Adams", c.artists.first.name
    assert_equal 1902, c.artists.first.born
    assert_equal 1984, c.artists.first.died
    assert_equal "United States", c.artists.first.country
  end




end
