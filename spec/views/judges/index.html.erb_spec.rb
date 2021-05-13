require 'rails_helper'

RSpec.describe "judges/index", type: :view do
  before(:each) do
    assign(:judges, [
      Judge.create!(
        name: "Name",
        user: nil,
        contest: nil
      ),
      Judge.create!(
        name: "Name",
        user: nil,
        contest: nil
      )
    ])
  end

  it "renders a list of judges" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
