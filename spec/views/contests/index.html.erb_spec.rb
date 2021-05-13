require 'rails_helper'

RSpec.describe "contests/index", type: :view do
  before(:each) do
    assign(:contests, [
      Contest.create!(
        name: "Name",
        organizer: "Organizer",
        user: nil
      ),
      Contest.create!(
        name: "Name",
        organizer: "Organizer",
        user: nil
      )
    ])
  end

  it "renders a list of contests" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Organizer".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
