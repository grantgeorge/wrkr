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

RSpec.describe V1::ExercisesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Exercise. As you add validations to Exercise, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExercisesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all exercises as @exercises' do
      exercise = Exercise.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:exercises)).to eq([exercise])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested exercise as @exercise' do
      exercise = Exercise.create! valid_attributes
      get :show, { id: exercise.to_param }, valid_session
      expect(assigns(:exercise)).to eq(exercise)
    end
  end

  describe 'GET #new' do
    it 'assigns a new exercise as @exercise' do
      get :new, {}, valid_session
      expect(assigns(:exercise)).to be_a_new(Exercise)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested exercise as @exercise' do
      exercise = Exercise.create! valid_attributes
      get :edit, { id: exercise.to_param }, valid_session
      expect(assigns(:exercise)).to eq(exercise)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Exercise' do
        expect do
          post :create, { exercise: valid_attributes }, valid_session
        end.to change(Exercise, :count).by(1)
      end

      it 'assigns a newly created exercise as @exercise' do
        post :create, { exercise: valid_attributes }, valid_session
        expect(assigns(:exercise)).to be_a(Exercise)
        expect(assigns(:exercise)).to be_persisted
      end

      it 'redirects to the created exercise' do
        post :create, { exercise: valid_attributes }, valid_session
        expect(response).to redirect_to(Exercise.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved exercise as @exercise' do
        post :create, { exercise: invalid_attributes }, valid_session
        expect(assigns(:exercise)).to be_a_new(Exercise)
      end

      it "re-renders the 'new' template" do
        post :create, { exercise: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested exercise' do
        exercise = Exercise.create! valid_attributes
        put :update, { id: exercise.to_param, exercise: new_attributes }, valid_session
        exercise.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested exercise as @exercise' do
        exercise = Exercise.create! valid_attributes
        put :update, { id: exercise.to_param, exercise: valid_attributes }, valid_session
        expect(assigns(:exercise)).to eq(exercise)
      end

      it 'redirects to the exercise' do
        exercise = Exercise.create! valid_attributes
        put :update, { id: exercise.to_param, exercise: valid_attributes }, valid_session
        expect(response).to redirect_to(exercise)
      end
    end

    context 'with invalid params' do
      it 'assigns the exercise as @exercise' do
        exercise = Exercise.create! valid_attributes
        put :update, { id: exercise.to_param, exercise: invalid_attributes }, valid_session
        expect(assigns(:exercise)).to eq(exercise)
      end

      it "re-renders the 'edit' template" do
        exercise = Exercise.create! valid_attributes
        put :update, { id: exercise.to_param, exercise: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested exercise' do
      exercise = Exercise.create! valid_attributes
      expect do
        delete :destroy, { id: exercise.to_param }, valid_session
      end.to change(Exercise, :count).by(-1)
    end

    it 'redirects to the exercises list' do
      exercise = Exercise.create! valid_attributes
      delete :destroy, { id: exercise.to_param }, valid_session
      expect(response).to redirect_to(exercises_url)
    end
  end
end
