require 'spec_helper'

describe App do
  describe "viewing the index" do
  	it "should display a list of submitted apps" do
  		count = App.all.count
  		3.times {FactoryGirl.build(:app)}
  		expect(App.all.count).to eq(count + 3)
  	end

  end

end
