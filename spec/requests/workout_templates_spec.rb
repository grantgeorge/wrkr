require 'rails_helper'

RSpec.describe "WorkoutTemplates", type: :request do
  describe "GET /workout_templates" do
    it "works! (now write some real specs)" do
      get workout_templates_path
      expect(response).to have_http_status(200)
    end
  end
end
