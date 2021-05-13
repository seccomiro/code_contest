require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      contest: nil,
      number: 1,
      description: "MyText",
      language: "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input[name=?]", "question[contest_id]"

      assert_select "input[name=?]", "question[number]"

      assert_select "textarea[name=?]", "question[description]"

      assert_select "input[name=?]", "question[language]"
    end
  end
end
