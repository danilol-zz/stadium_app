require 'rails_helper'

RSpec.describe "stadia/edit", type: :view do
  before(:each) do
    @stadium = assign(:stadium, Stadium.create!())
  end

  it "renders the edit stadium form" do
    render

    assert_select "form[action=?][method=?]", stadium_path(@stadium), "post" do
    end
  end
end
