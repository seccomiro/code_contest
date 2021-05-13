require 'rails_helper'

RSpec.describe "clarifications/index", type: :view do
  before(:each) do
    assign(:clarifications, [
      Clarification.create!(
        team: nil,
        question: nil,
        judge: nil,
        question: "Question",
        answer: "Answer"
      ),
      Clarification.create!(
        team: nil,
        question: nil,
        judge: nil,
        question: "Question",
        answer: "Answer"
      )
    ])
  end

  it "renders a list of clarifications" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Question".to_s, count: 2
    assert_select "tr>td", text: "Answer".to_s, count: 2
  end
end
