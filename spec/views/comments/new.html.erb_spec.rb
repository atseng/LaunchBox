require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :text => "MyText",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "textarea#comment_text[name=?]", "comment[text]"
      assert_select "input#comment_first_name[name=?]", "comment[first_name]"
      assert_select "input#comment_last_name[name=?]", "comment[last_name]"
      assert_select "input#comment_email[name=?]", "comment[email]"
    end
  end
end
