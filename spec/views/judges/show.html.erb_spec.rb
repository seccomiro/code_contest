require 'rails_helper'

RSpec.describe "judges/show", type: :view do
  before(:each) do
    @judge = assign(:judge, Judge.create!(
      name: "Name",
      user: nil,
      contest: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
