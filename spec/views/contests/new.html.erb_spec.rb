require 'rails_helper'

RSpec.describe "contests/new", type: :view do
  before(:each) do
    assign(:contest, Contest.new(
      name: "MyString",
      organizer: "MyString",
      user: nil
    ))
  end

  it "renders new contest form" do
    render

    assert_select "form[action=?][method=?]", contests_path, "post" do

      assert_select "input[name=?]", "contest[name]"

      assert_select "input[name=?]", "contest[organizer]"

      assert_select "input[name=?]", "contest[user_id]"
    end
  end
end
