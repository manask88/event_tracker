require 'spec_helper'
describe EventsController do

  describe "GET 'index'" do
    it "HTTP response should succed"   do
      get :index
      response.should be_success
    end

    it "assigns all events as @events" do
      events= Event.all
      get :index
      assigns(:events).should eq(events)
    end

    it "calls all" do
      Event.should_receive(:all)
      get :index

    end


    it "renders the view" do
      get :index
      response.should render_template :index

    end
  end

  describe "GET 'show'" do
    it "assigns the requested event as @event" do
      @event=Event.new(name: 'prueba',location_id:1, starts: '2007-09-01 04:03:00 UTC',
                       ends: '2007-09-01 05:03:00 UTC',  description: 'testdescription')
      @event.save

      get :show, id: @event.id
      assigns(:event).should eq(@event)
    end

    it "calls find" do
      Event.should_receive(:find)
      get :show, id: 45

    end

  end


  describe "GET 'new'" do
      it

  end



  describe "GET 'edit'" do


  end
  describe "POST 'create'" do


  end
  describe "PUT 'update'" do


  end

  describe "DELETE 'destroy'" do


  end

end

