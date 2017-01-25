require 'rails_helper'

RSpec.describe Product, type: :model do
 	  describe "name" do
	    it "cannot be nil" do
	      product = FactoryGirl.build(:product, name: nil)
	    end
	  end
  
	  describe "quantity" do
	    it "cannot be nil" do
	      product = FactoryGirl.build(:product, quantity: nil)

	      expect(product).to_not be_valid
	    end
	  end


	    it "cannot be negative" do
	      product = FactoryGirl.build(:product, quantity: -1)

	      expect(product).to_not be_valid
	    end

	  describe "price" do
    	it "cannot have 3 or more numbers after the decimal point" do
      	product = FactoryGirl.build(:product, price: 78.456)

      	expect(product).to_not be_valid
    	end
  	end

  	
  end