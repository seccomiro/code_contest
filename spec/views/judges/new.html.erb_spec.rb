require 'rails_helper'

RSpec.describe "judges/new", type: :view do
  before(:each) do
    assign(:judge, Judge.new(
      name: "MyString",
      user: nil,
      contest: nil
    ))
  end

  it "renders new judge form" do
    render

    assert_select "form[action=?][method=?]", judges_path, "post" do

      assert_select "input[name=?]", "judge[name]"

      assert_select "input[name=?]", "judge[user_id]"

      assert_select "input[name=?]", "judge[contest_id]"
    end
  end
end
