require 'spec_helper'

describe "props/index" do
  before(:each) do
    assign(:props, [
      stub_model(Prop,
        :app_id => 1
      ),
      stub_model(Prop,
        :app_id => 1
      )
    ])
  end

  it "renders a list of props" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
