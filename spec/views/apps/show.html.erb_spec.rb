require 'spec_helper'

describe "apps/show" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "Name",
      :url => "Url",
      :email => "Email",
      :codebase_url => "",
      :props => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/Email/)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
