require 'rails_helper'

RSpec.describe "stadia/index", type: :view do
  before(:each) do
    assign(:stadia, [
      Stadium.create!(),
      Stadium.create!()
    ])
  end

  it "renders a list of stadia" do
    render
  end
end
