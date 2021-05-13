require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      contest: nil,
      number: 1,
      description: "MyText",
      language: "MyString"
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input[name=?]", "question[contest_id]"

      assert_select "input[name=?]", "question[number]"

      assert_select "textarea[name=?]", "question[description]"

      assert_select "input[name=?]", "question[language]"
    end
  end
end
