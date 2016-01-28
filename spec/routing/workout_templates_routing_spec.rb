require 'rails_helper'

RSpec.describe WorkoutTemplatesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/workout_templates').to route_to('workout_templates#index')
    end

    it 'routes to #new' do
      expect(get: '/workout_templates/new').to route_to('workout_templates#new')
    end

    it 'routes to #show' do
      expect(get: '/workout_templates/1').to route_to('workout_templates#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/workout_templates/1/edit').to route_to('workout_templates#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/workout_templates').to route_to('workout_templates#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/workout_templates/1').to route_to('workout_templates#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/workout_templates/1').to route_to('workout_templates#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/workout_templates/1').to route_to('workout_templates#destroy', id: '1')
    end
  end
end
