FactoryGirl.define do 
	

	# Equivalent of
	# Product.create(:name => "Shoes, :description => "Nice pants white leather shoes", :price_in_cents => 9900)
	factory :product do 
		name "Shoes"
		description "Nice patent white leather shoes"
		price_in_cents 9900
	end

	factory :cheap_products, :class => Product do
		name "Book"
		description "Has pictures"
		price_in_cents 99
	end
end

