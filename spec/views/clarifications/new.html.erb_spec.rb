require 'rails_helper'

RSpec.describe "clarifications/new", type: :view do
  before(:each) do
    assign(:clarification, Clarification.new(
      team: nil,
      question: nil,
      judge: nil,
      question: "MyString",
      answer: "MyString"
    ))
  end

  it "renders new clarification form" do
    render

    assert_select "form[action=?][method=?]", clarifications_path, "post" do

      assert_select "input[name=?]", "clarification[team_id]"

      assert_select "input[name=?]", "clarification[question_id]"

      assert_select "input[name=?]", "clarification[judge_id]"

      assert_select "input[name=?]", "clarification[question]"

      assert_select "input[name=?]", "clarification[answer]"
    end
  end
end
