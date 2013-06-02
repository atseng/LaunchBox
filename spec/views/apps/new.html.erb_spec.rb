require 'spec_helper'

describe "apps/new" do
  before(:each) do
    assign(:app, stub_model(App,
      :name => "MyString",
      :url => "MyString",
      :email => "MyString",
      :codebase_url => "",
      :props => 1
    ).as_new_record)
  end

  it "renders new app form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apps_path, "post" do
      assert_select "input#app_name[name=?]", "app[name]"
      assert_select "input#app_url[name=?]", "app[url]"
      assert_select "input#app_email[name=?]", "app[email]"
      assert_select "input#app_codebase_url[name=?]", "app[codebase_url]"
      assert_select "input#app_props[name=?]", "app[props]"
    end
  end
end
