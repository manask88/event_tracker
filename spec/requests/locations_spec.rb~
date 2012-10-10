require 'spec_helper'

describe "Locations" do
	before do
	@location = Location.new(name: "INI")
	end
	
	subject { @location }
	
	it {should respond_to(:name)}
	it {should respond_to(:description)}
	it {should_not respond_to(:descr)}
	it {should be_valid}
	
	describe "When name is not present" do
		before {@location.name=nil}
		it {should_not be_valid}
	end
	
	describe "When name is too long" do
		before {@location.name="a"*51}
		it {should_not be_valid}
	end
	
	describe "When location name is repeated" do
		before do
		location_with_same_name= @location.dup
		location_with_same_name.save
		end
		it {should_not be_valid}
		
	
	end
end
