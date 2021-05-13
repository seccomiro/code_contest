require 'rails_helper'

RSpec.describe "evaluations/index", type: :view do
  before(:each) do
    assign(:evaluations, [
      Evaluation.create!(
        submission: nil,
        judge: nil,
        result: 2
      ),
      Evaluation.create!(
        submission: nil,
        judge: nil,
        result: 2
      )
    ])
  end

  it "renders a list of evaluations" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
