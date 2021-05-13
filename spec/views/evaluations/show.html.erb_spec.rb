require 'rails_helper'

RSpec.describe "evaluations/show", type: :view do
  before(:each) do
    @evaluation = assign(:evaluation, Evaluation.create!(
      submission: nil,
      judge: nil,
      result: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
