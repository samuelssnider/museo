require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

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

end
