require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      contest: nil,
      number: 2,
      description: "MyText",
      language: "Language"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Language/)
  end
end
