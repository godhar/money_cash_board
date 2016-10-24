require('minitest/autorun')
require('minitest/rg')
require_relative('../models/item')

class TestCategory < MiniTest::Test

  def setup
      options = { 'description' => 'food',
              'cost' => 20.00
    }

    @item = Category.new(options)
  end

  def test_category_has_description
    assert_equal('food', @item.description)
  end

  def test_category_has_cost
    assert_equal(20.00, @item.cost)
  end

end