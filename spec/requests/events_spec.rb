require 'spec_helper'

describe "Events" do


	before do
		@event = Event.new(:name => "prueba",:location_id=>1,
		:starts=>"2007-09-01 04:03:00 UTC ",:ends=>"2007-09-01 05:03:00 UTC ")
	end

	subject {@event}

	describe "When the name is not present" do
		before {@event.name=""}
		it {should_not be_valid}
	end

	describe "When the events ends before it starts" do
		before do
			@event.ends="2007-09-01 04:03:00 UTC"
			@event.starts="2007-09-01 05:03:00 UTC"

		end
		it {should_not be_valid}
	end

	 describe "Index" do
    it "should have an index page " do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/events'
      response.status.should be(200)
    end

    it "should have the content 'Events'" do
      visit '/events'
      page.should have_content('events')
    end

     it "should have the field 'Location'" do
      visit '/events'
      page.should have_content('Location')
    end

    it "should have the field 'Name'" do
      visit '/events'
      page.should have_content('Name')
    end

    it "should have the field 'Description'" do
      visit '/events'
      page.should have_content('Description')
    end
  end
end
