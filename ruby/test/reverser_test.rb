require 'minitest/autorun'
require_relative '../lib/reverser'

class ReverserTest < MiniTest::Unit::TestCase
  def reverser
    Reverser.new("she sells seashells down by the seashore")
  end

  def test_reversed
    expected = "erohsaes eht yb nwod sllehsaes slles ehs"
    assert_equal expected, reverser.reversed
  end

  def test_reversed_words
    skip
    expected = "ehs slles sllehsaes nwod yb eht erohsaes"
    assert_equal expected, reverser.reversed_words
  end

  def test_reversed_order_of_words
    skip
    expected = "seashore the by down seashells sells she"
    assert_equal expected, reverser.reversed_order_of_words
  end

  def test_reversed_odd_words
    skip
    expected = "she slles seashells nwod by eht seashore"
    assert_equal expected, reverser.reversed_odd_words
  end
end
