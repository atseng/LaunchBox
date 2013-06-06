require 'spec_helper'

describe "Comments" do
	let(:app_submit){FactoryGirl.create(:app)}
	let(:valid_comment){FactoryGirl.create(:comment)}
	let(:fill_comment) do
		fill_in("First name", :with => valid_comment.first_name)
		fill_in("Last name", :with => valid_comment.last_name)
		fill_in("Email", :with => valid_comment.email)
		fill_in("Text", :with => valid_comment.text)
	end

describe "Comment on App" do
	it 'when valid comment is created it appears on app page' do
		app_submit
		visit '/apps'
    click_link('Show')
    fill_comment
    click_button('Create Comment')
    expect(page).to have_content('Jack')
	end

it 'will appear at the end of the list of comments' do
	app_submit
	visit '/apps'
	click_link('Show')
	fill_comment
	fill_in("Text", :with => "This is latest comment")
  click_button('Create Comment')
  expect(page).to have_content('This is latest comment')
	end
end
end