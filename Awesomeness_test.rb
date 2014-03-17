require 'minitest/autorun'
require 'minitest/pride'
require './Awesomeness'

class Awsomeness_test < MiniTest::Unit::TestCase
  def awesome
    Awesomeness.new
  end

  #tests maximum awesomeness of all objects
  def test_maximum_awesomeness
    assert_equal "KeiperBelt", awesome.most_awesome
  end

  #tests average awesomeness of all objects
  def test_average_awesomeness
    assert_equal 5, awesome.avg_awesome
  end

  #tests printing first 10 objects
  def test_printing
    assert_equal "Sun Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto", awesome.print
  end
end
