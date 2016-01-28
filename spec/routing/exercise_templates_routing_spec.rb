require 'rails_helper'

RSpec.describe ExerciseTemplatesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/exercise_templates').to route_to('exercise_templates#index')
    end

    it 'routes to #new' do
      expect(get: '/exercise_templates/new').to route_to('exercise_templates#new')
    end

    it 'routes to #show' do
      expect(get: '/exercise_templates/1').to route_to('exercise_templates#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/exercise_templates/1/edit').to route_to('exercise_templates#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/exercise_templates').to route_to('exercise_templates#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/exercise_templates/1').to route_to('exercise_templates#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/exercise_templates/1').to route_to('exercise_templates#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/exercise_templates/1').to route_to('exercise_templates#destroy', id: '1')
    end
  end
end
