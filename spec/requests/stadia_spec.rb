require 'rails_helper'

RSpec.describe "Stadia", type: :request do
  describe "GET /stadia" do
    it "works! (now write some real specs)" do
      get stadia_path
      expect(response).to have_http_status(200)
    end
  end
end
