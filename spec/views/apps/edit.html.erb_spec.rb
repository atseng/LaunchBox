require 'spec_helper'

describe "apps/edit" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "MyString",
      :url => "MyString",
      :email => "MyString",
      :codebase_url => "",
      :props => 1
    ))
  end

  it "renders the edit app form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", app_path(@app), "post" do
      assert_select "input#app_name[name=?]", "app[name]"
      assert_select "input#app_url[name=?]", "app[url]"
      assert_select "input#app_email[name=?]", "app[email]"
      assert_select "input#app_codebase_url[name=?]", "app[codebase_url]"
      assert_select "input#app_props[name=?]", "app[props]"
    end
  end
end
