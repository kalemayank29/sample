require 'spec_helper'

describe "polls/edit" do
  before(:each) do
    @poll = assign(:poll, stub_model(Poll,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit poll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", poll_path(@poll), "post" do
      assert_select "input#poll_content[name=?]", "poll[content]"
      assert_select "input#poll_user_id[name=?]", "poll[user_id]"
    end
  end
end
