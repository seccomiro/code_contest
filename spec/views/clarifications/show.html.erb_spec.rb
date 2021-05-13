require 'rails_helper'

RSpec.describe "clarifications/show", type: :view do
  before(:each) do
    @clarification = assign(:clarification, Clarification.create!(
      team: nil,
      question: nil,
      judge: nil,
      question: "Question",
      answer: "Answer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Question/)
    expect(rendered).to match(/Answer/)
  end
end
