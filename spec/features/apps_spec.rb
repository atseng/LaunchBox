require 'spec_helper'

describe "Apps" do

  # describe "viewing the index" do
  # 	it "should display a list of submitted apps" do
  # 	visit '/apps'
  # 	expect(page).to have_content("Test app content")
  # 	end
  # end

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
