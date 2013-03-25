require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do 
  	@p = FactoryGirl.create(:product)
  	assert @p.valid?
  end

  test "must have description" do
  	@p.description = ""
  	refute @p.valid?
  end

  test "must have a name" do
  	@p.name = ""
  	refute @p.valid?
  end

  test "price_in_cents must be an integer" do
  	@p.price_in_cents = 1.5
  	refute @p.valid?
	end

	test "must have price_in_cents" do
		@p.price_in_cents = nil
		refute @p.valid?
	end

	test "price_in_dollars must be a float" do
		@p.price_in_dollars = 15.00 && 15
		assert @p.valid?
	end

	#test "price_in_dollars to price_in_cents" do
	#	@p.price_in_dollars = price_in_cents / 100
	#	assert @p.valid?
	#end
end
