# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/scaffold_resources', type: :request do
  # ScaffoldResource. As you add validations to ScaffoldResource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    # skip("Add a hash of attributes valid for your model")
    FactoryBot.build(:scaffold_resource).attributes
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
    # FactoryBot.build(:scaffold_resource, name: '', description: '').attributes
  end

  # describe "GET /index" do
  #   it "renders a successful response" do
  #     ScaffoldResource.create! valid_attributes
  #     get scaffold_resources_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  describe 'GET /show' do
    it 'renders a successful response' do
      scaffold_resource = ScaffoldResource.create! valid_attributes
      get scaffold_resource_url(scaffold_resource)
      expect(response).to be_successful
    end
  end

  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_scaffold_resource_url
  #     expect(response).to be_successful
  #   end
  # end

  describe 'GET /edit' do
    it 'render a successful response' do
      scaffold_resource = ScaffoldResource.create! valid_attributes
      get edit_scaffold_resource_url(scaffold_resource)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new ScaffoldResource' do
        expect do
          post scaffold_resources_url, params: { scaffold_resource: valid_attributes }
        end.to change(ScaffoldResource, :count).by(1)
      end

      it 'redirects to the created scaffold_resource' do
        post scaffold_resources_url, params: { scaffold_resource: valid_attributes }
        expect(response).to redirect_to(scaffold_resource_url(ScaffoldResource.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new ScaffoldResource' do
        expect do
          post scaffold_resources_url, params: { scaffold_resource: invalid_attributes }
        end.to change(ScaffoldResource, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post scaffold_resources_url, params: { scaffold_resource: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested scaffold_resource' do
        scaffold_resource = ScaffoldResource.create! valid_attributes
        patch scaffold_resource_url(scaffold_resource), params: { scaffold_resource: new_attributes }
        scaffold_resource.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the scaffold_resource' do
        scaffold_resource = ScaffoldResource.create! valid_attributes
        patch scaffold_resource_url(scaffold_resource), params: { scaffold_resource: new_attributes }
        scaffold_resource.reload
        expect(response).to redirect_to(scaffold_resource_url(scaffold_resource))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        scaffold_resource = ScaffoldResource.create! valid_attributes
        patch scaffold_resource_url(scaffold_resource), params: { scaffold_resource: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested scaffold_resource' do
      scaffold_resource = ScaffoldResource.create! valid_attributes
      expect do
        delete scaffold_resource_url(scaffold_resource)
      end.to change(ScaffoldResource, :count).by(-1)
    end

    it 'redirects to the scaffold_resources list' do
      scaffold_resource = ScaffoldResource.create! valid_attributes
      delete scaffold_resource_url(scaffold_resource)
      expect(response).to redirect_to(scaffold_resources_url)
    end
  end
end
