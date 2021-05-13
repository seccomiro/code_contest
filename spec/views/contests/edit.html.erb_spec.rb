require 'rails_helper'

RSpec.describe "contests/edit", type: :view do
  before(:each) do
    @contest = assign(:contest, Contest.create!(
      name: "MyString",
      organizer: "MyString",
      user: nil
    ))
  end

  it "renders the edit contest form" do
    render

    assert_select "form[action=?][method=?]", contest_path(@contest), "post" do

      assert_select "input[name=?]", "contest[name]"

      assert_select "input[name=?]", "contest[organizer]"

      assert_select "input[name=?]", "contest[user_id]"
    end
  end
end
