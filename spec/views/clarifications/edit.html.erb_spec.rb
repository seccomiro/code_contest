require 'rails_helper'

RSpec.describe "clarifications/edit", type: :view do
  before(:each) do
    @clarification = assign(:clarification, Clarification.create!(
      team: nil,
      question: nil,
      judge: nil,
      question: "MyString",
      answer: "MyString"
    ))
  end

  it "renders the edit clarification form" do
    render

    assert_select "form[action=?][method=?]", clarification_path(@clarification), "post" do

      assert_select "input[name=?]", "clarification[team_id]"

      assert_select "input[name=?]", "clarification[question_id]"

      assert_select "input[name=?]", "clarification[judge_id]"

      assert_select "input[name=?]", "clarification[question]"

      assert_select "input[name=?]", "clarification[answer]"
    end
  end
end
