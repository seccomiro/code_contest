require 'rails_helper'

RSpec.describe "submissions/new", type: :view do
  before(:each) do
    assign(:submission, Submission.new(
      question: nil,
      team: nil,
      code: "MyText",
      language: "MyString"
    ))
  end

  it "renders new submission form" do
    render

    assert_select "form[action=?][method=?]", submissions_path, "post" do

      assert_select "input[name=?]", "submission[question_id]"

      assert_select "input[name=?]", "submission[team_id]"

      assert_select "textarea[name=?]", "submission[code]"

      assert_select "input[name=?]", "submission[language]"
    end
  end
end
