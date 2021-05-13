require 'rails_helper'

RSpec.describe "evaluations/new", type: :view do
  before(:each) do
    assign(:evaluation, Evaluation.new(
      submission: nil,
      judge: nil,
      result: 1
    ))
  end

  it "renders new evaluation form" do
    render

    assert_select "form[action=?][method=?]", evaluations_path, "post" do

      assert_select "input[name=?]", "evaluation[submission_id]"

      assert_select "input[name=?]", "evaluation[judge_id]"

      assert_select "input[name=?]", "evaluation[result]"
    end
  end
end
