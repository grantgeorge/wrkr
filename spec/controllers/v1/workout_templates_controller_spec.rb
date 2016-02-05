require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe V1::WorkoutTemplatesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # WorkoutTemplate. As you add validations to WorkoutTemplate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WorkoutTemplatesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all workout_templates as @workout_templates' do
      workout_template = create(:workout_template)
      get :index, {}, valid_session
      expect(assigns(:workout_templates)).to eq([workout_template])
    end
  end

  describe 'GET #show' do
    before do
      get :show, { id: workout_template.to_param }, valid_session
    end

    subject(:results) { JSON.parse(response.body) }

    context 'when the workout template exists' do
      let(:workout_template) { create(:workout_template) }

      it { expect(response.status).to eq 200 }
      it { expect(results['id']).to eq workout_template.id }
      it { expect(results['name']).to eq workout_template.name }
      it { expect(results['description']).to eq workout_template.description }
      it { expect(assigns(:workout_template)).to eq workout_template }
    end

    context 'when the workout_template doesn\'t exist' do
      let(:workout_template) { build_stubbed(:workout_template) }
      it { expect(response.status).to eq 400 }
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new WorkoutTemplate' do
        expect do
          post :create, { workout_template: valid_attributes }, valid_session
        end.to change(WorkoutTemplate, :count).by(1)
      end

      it 'assigns a newly created workout_template as @workout_template' do
        post :create, { workout_template: valid_attributes }, valid_session
        expect(assigns(:workout_template)).to be_a(WorkoutTemplate)
        expect(assigns(:workout_template)).to be_persisted
      end

      it 'redirects to the created workout_template' do
        post :create, { workout_template: valid_attributes }, valid_session
        expect(response).to redirect_to(WorkoutTemplate.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved workout_template as @workout_template' do
        post :create, { workout_template: invalid_attributes }, valid_session
        expect(assigns(:workout_template)).to be_a_new(WorkoutTemplate)
      end

      it "re-renders the 'new' template" do
        post :create, { workout_template: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested workout_template' do
        workout_template = WorkoutTemplate.create! valid_attributes
        put :update, { id: workout_template.to_param, workout_template: new_attributes }, valid_session
        workout_template.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested workout_template as @workout_template' do
        workout_template = WorkoutTemplate.create! valid_attributes
        put :update, { id: workout_template.to_param, workout_template: valid_attributes }, valid_session
        expect(assigns(:workout_template)).to eq(workout_template)
      end

      it 'redirects to the workout_template' do
        workout_template = WorkoutTemplate.create! valid_attributes
        put :update, { id: workout_template.to_param, workout_template: valid_attributes }, valid_session
        expect(response).to redirect_to(workout_template)
      end
    end

    context 'with invalid params' do
      it 'assigns the workout_template as @workout_template' do
        workout_template = WorkoutTemplate.create! valid_attributes
        put :update, { id: workout_template.to_param, workout_template: invalid_attributes }, valid_session
        expect(assigns(:workout_template)).to eq(workout_template)
      end

      it "re-renders the 'edit' template" do
        workout_template = WorkoutTemplate.create! valid_attributes
        put :update, { id: workout_template.to_param, workout_template: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested workout_template' do
      workout_template = WorkoutTemplate.create! valid_attributes
      expect do
        delete :destroy, { id: workout_template.to_param }, valid_session
      end.to change(WorkoutTemplate, :count).by(-1)
    end

    it 'redirects to the workout_templates list' do
      workout_template = WorkoutTemplate.create! valid_attributes
      delete :destroy, { id: workout_template.to_param }, valid_session
      expect(response).to redirect_to(workout_templates_url)
    end
  end
end
