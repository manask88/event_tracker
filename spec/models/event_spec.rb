require 'spec_helper'
require "event"
describe Event do

  before do
    @event=Event.new(name: 'prueba',location_id:1, starts: '2007-09-01 04:03:00 UTC',
                     ends: '2007-09-01 05:03:00 UTC',  description: 'testdescription')
  end

  subject {@event}

  context "verifying methods existance" do
    it { should respond_to(:name)}
    it { should respond_to(:starts)}
    it { should respond_to(:ends)}
    it { should respond_to(:location_id)}
    it { should respond_to(:description)}
    it { should respond_to(:dates?)}

  end


  context "verifying atributes assignation" do
    its(:name) { should =="prueba"}
    its(:starts) {should == "2007-09-01 04:03:00 UTC"}
    its(:ends) {should == "2007-09-01 05:03:00 UTC"}
    its(:location_id) {should == 1}
    its(:description) {should == "testdescription"}
  end




  context "Validations" do
    describe "When the name is not present" do
      before {@event.name=nil}
      it {should_not be_valid}
    end

    describe "When the start date is not present" do
        before {@event.starts=nil}
        it {should_not be_valid}
    end

    describe "When the end date is not present" do
      before {@event.ends=nil}
      it {should_not be_valid}
    end

    describe "When the event ends before it starts" do
      before do
        @event.ends="2007-09-01 04:03:00 UTC"
        @event.starts="2007-09-01 05:03:00 UTC"

      end
      it {should_not be_valid}
    end



    describe "when location_id is not present" do
      before {@event.location_id=nil}
      it {should_not be_valid}
    end

  end



  it "changes the number of events" do

    event=Event.new(name: 'prueba2',location_id:1, starts: '2007-09-01 04:03:00 UTC',
                     ends: '2007-09-01 05:03:00 UTC',  description: 'testdescription2')
    expect {event.save}.to change {Event.count}.by(1)
  end

end
