require 'rails_helper'

RSpec.describe "judges/edit", type: :view do
  before(:each) do
    @judge = assign(:judge, Judge.create!(
      name: "MyString",
      user: nil,
      contest: nil
    ))
  end

  it "renders the edit judge form" do
    render

    assert_select "form[action=?][method=?]", judge_path(@judge), "post" do

      assert_select "input[name=?]", "judge[name]"

      assert_select "input[name=?]", "judge[user_id]"

      assert_select "input[name=?]", "judge[contest_id]"
    end
  end
end
