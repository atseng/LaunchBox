require 'spec_helper'

describe "props/show" do
  before(:each) do
    @prop = assign(:prop, stub_model(Prop,
      :app_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
