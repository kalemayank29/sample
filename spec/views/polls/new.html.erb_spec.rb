require 'spec_helper'

describe "polls/new" do
  before(:each) do
    assign(:poll, stub_model(Poll,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new poll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", polls_path, "post" do
      assert_select "input#poll_content[name=?]", "poll[content]"
      assert_select "input#poll_user_id[name=?]", "poll[user_id]"
    end
  end
end
