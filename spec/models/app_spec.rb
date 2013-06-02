require 'spec_helper'

 describe App do

  describe "viewing the apps/new page" do
    it "should accept codebase_url, email, name, props, url" do
      app_count = App.all.count
      my_app = FactoryGirl.create(:app)
      expect(App.all.count).to eql(app_count+1)
    end
  end

  describe "viewing the index" do
  	it "should display a list of submitted apps" do
  		count = App.all.count
  		3.times {FactoryGirl.create(:app)}
  		expect(App.all.count).to eq(count + 3)
  	end
  end

  describe "submitting a app" do
  	it "will not be valid if name field is empty" do
  		app = FactoryGirl.build(:app, name: nil)
  		expect(app).to_not be_valid
		end

		it "will not be valid if url field is empty" do
			app = FactoryGirl.build(:app, url: nil)
  		expect(app).to_not be_valid
		end

		it "will not be valid if email field is empty" do
			app = FactoryGirl.build(:app, email: nil)
  		expect(app).to_not be_valid
		end

		it "will not be valid if codebase url field is empty" do
			app = FactoryGirl.build(:app, codebase_url: nil)
  		expect(app).to_not be_valid
		end

		it "will not work if the email address is invalid" do
			app = FactoryGirl.build(:app, email: "test(at)launchy.com")
			expect(app).to_not be_valid
		end
  end

  describe "viewing an app" do
		it "will display more information about the app on a new page" do
			app = FactoryGirl.create(:app)
			expect(App.all.count).to eq(1)
		end
	end

end
