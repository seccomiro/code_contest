require 'rails_helper'

RSpec.describe "submissions/index", type: :view do
  before(:each) do
    assign(:submissions, [
      Submission.create!(
        question: nil,
        team: nil,
        code: "MyText",
        language: "Language"
      ),
      Submission.create!(
        question: nil,
        team: nil,
        code: "MyText",
        language: "Language"
      )
    ])
  end

  it "renders a list of submissions" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Language".to_s, count: 2
  end
end
