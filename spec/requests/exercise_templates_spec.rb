require 'rails_helper'

RSpec.describe 'ExerciseTemplates', type: :request do
  describe 'GET /exercise_templates' do
    it 'works! (now write some real specs)' do
      get exercise_templates_path
      expect(response).to have_http_status(200)
    end
  end
end
