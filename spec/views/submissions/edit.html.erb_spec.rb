require 'rails_helper'

RSpec.describe "submissions/edit", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      question: nil,
      team: nil,
      code: "MyText",
      language: "MyString"
    ))
  end

  it "renders the edit submission form" do
    render

    assert_select "form[action=?][method=?]", submission_path(@submission), "post" do

      assert_select "input[name=?]", "submission[question_id]"

      assert_select "input[name=?]", "submission[team_id]"

      assert_select "textarea[name=?]", "submission[code]"

      assert_select "input[name=?]", "submission[language]"
    end
  end
end
