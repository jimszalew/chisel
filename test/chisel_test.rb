require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  attr_reader :chisel

  def setup
    @chisel = Chisel.new
  end

  def test_chisel_class_exists
    assert_instance_of Chisel, chisel
  end

  def test
end
