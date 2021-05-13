require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        contest: nil,
        number: 2,
        description: "MyText",
        language: "Language"
      ),
      Question.create!(
        contest: nil,
        number: 2,
        description: "MyText",
        language: "Language"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Language".to_s, count: 2
  end
end
