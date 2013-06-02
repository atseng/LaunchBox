require 'spec_helper'

describe "Apps" do

  describe "viewing the index" do
  	it "should display a list of submitted apps" do
  	visit '/apps'
  	expect(page).to have_content("Test app content")
  	end
  end


end
