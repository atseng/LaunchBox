require 'spec_helper'

 describe App do
#   describe "viewing the index" do
#   	it "should display a list of submitted apps" do
#   		count = App.all.count
#   		3.times {FactoryGirl.build(:app)}
#   		expect(App.all.count).to eq(count + 3)
#   	end

#   end
  describe "viewing the apps/new page" do
    it "should accept codebase_url, email, name, props, url" do
      app_count = App.all.count
      my_app = FactoryGirl.create(:app)
      expect(App.all.count).to eql(app_count+1)
    end
  end
 end
