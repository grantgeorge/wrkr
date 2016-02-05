require 'rails_helper'

RSpec.describe "Downvotes", type: :request do
  describe "GET /downvotes" do
    it "works! (now write some real specs)" do
      get downvotes_path
      expect(response).to have_http_status(200)
    end
  end
end
