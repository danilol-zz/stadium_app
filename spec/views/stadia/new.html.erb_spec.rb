require 'rails_helper'

RSpec.describe "stadia/new", type: :view do
  before(:each) do
    assign(:stadium, Stadium.new())
  end

  it "renders new stadium form" do
    render

    assert_select "form[action=?][method=?]", stadia_path, "post" do
    end
  end
end
