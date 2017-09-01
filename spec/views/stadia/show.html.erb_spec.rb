require 'rails_helper'

RSpec.describe "stadia/show", type: :view do
  before(:each) do
    @stadium = assign(:stadium, Stadium.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
