require 'rails_helper'

RSpec.describe "contests/show", type: :view do
  before(:each) do
    @contest = assign(:contest, Contest.create!(
      name: "Name",
      organizer: "Organizer",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Organizer/)
    expect(rendered).to match(//)
  end
end
