require 'spec_helper'

describe "Apps" do

	let(:app_submit){FactoryGirl.build(:app)}
	let(:valid_submit) do
		fill_in("Name", :with => app_submit.name)
		fill_in("Url", :with => app_submit.url)
		fill_in("Email", :with => app_submit.email)
		fill_in("Codebase url", :with => app_submit.codebase_url)
		fill_in("Props", :with => app_submit.props)
	end

  describe "viewing the index" do
  	it "should display a list of submitted apps" do
  	visit '/apps/new'
  	valid_submit
  	click_button "Create App"
  	expect(page).to have_content("CuddleWithUs")
  	end
  end

  describe "submitting a app" do
  	it "should not be valid if any fields are empty" do
  		visit '/apps/new'
  		valid_submit
  		fill_in("Name", :with => nil)
  		click_button "Create App"
  		expect(page).to have_content('error prohibited this app from being saved')
  	end

  	it "should not work if the email address is invalid" do
  		visit '/apps/new'
  		valid_submit
  		fill_in("Email", :with => "hello(at)launchy.com")
  		click_button "Create App"
  		expect(page).to have_content('error prohibited this app from being saved')
  	end
  end

  describe "viewing an app" do
  	it "will open a new page that has additional app information" do
  		visit '/apps/new'
  		valid_submit
  		click_button "Create App"
  		click_link "Back"
  		click_link "Show"
  		expect(page).to have_content('CuddleWithUs')
  	end
  end

 describe 'viewing the submit page' do
  it 'should contain fields for codebase_url, email, name, props, url' do
    visit '/apps/new'
    fill_in('Name', :with => 'My App')
    fill_in('Url', :with => 'www.myapp.com')
    fill_in('Email', :with => 'my@app.com')
    fill_in('Codebase url', :with => 'guthub.com/myapp')
    fill_in('Props', :with => '1')
    click_button('Create App')
    expect(page).to have_content("App was successfully created.")
  end
 end

  describe 'viewing the app page' do
  it 'should have a comment form to enter first name, last name, email, text' do
    visit '/apps/new'
    fill_in('Name', :with => 'My App')
    fill_in('Url', :with => 'www.myapp.com')
    fill_in('Email', :with => 'my@app.com')
    fill_in('Codebase url', :with => 'guthub.com/myapp')
    fill_in('Props', :with => '1')
    click_button('Create App')
    visit '/apps'
    click_link('Show')
    expect(page).to have_content("New comment")
  end
 end
end
