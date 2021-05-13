require 'rails_helper'

RSpec.describe "evaluations/edit", type: :view do
  before(:each) do
    @evaluation = assign(:evaluation, Evaluation.create!(
      submission: nil,
      judge: nil,
      result: 1
    ))
  end

  it "renders the edit evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluation_path(@evaluation), "post" do

      assert_select "input[name=?]", "evaluation[submission_id]"

      assert_select "input[name=?]", "evaluation[judge_id]"

      assert_select "input[name=?]", "evaluation[result]"
    end
  end
end
