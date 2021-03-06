require 'spec_helper'

RSpec.describe Spree::Admin::ArrangementsController, :type => :controller do

  stub_authorization!

  describe 'GET #index' do

    let(:arrangement) { create(:arrangement, slug: "/abc") }

    it 'renders the :index template' do
      spree_get :index
      expect(response.status).to eq(200)
      expect(response).to render_template(:index)
    end

    it 'populates an array of arrangements' do
      spree_get :index
      expect(assigns(:arrangements)).to match_array([arrangement])
    end

  end

  describe 'GET #new' do

    it "assigns a new Contact to @arrangement" do
      spree_get :new
      expect(assigns(:arrangement)).to be_a_new(Spree::Arrangement) 
    end

    it 'renders the :new template' do
      spree_get :new
      expect(response.status).to eq(200)
      expect(response).to render_template(:new)
    end

  end

  describe 'GET#edit' do

    it "assigns the requested arrangement to @arrangement" do
      arrangement = create(:arrangement)
      get :edit, id: arrangement
      expect(assigns(:arrangement)).to eq arrangement
    end
    
    it "renders the :edit template" do 
      arrangement = create(:arrangement)
      get :edit, id: arrangement
      expect(response).to render_template :edit 
    end
  
  end

  describe 'POST#create' do

    context 'with valid attributes' do

      it "saves the new arrangement in the database" do
        expect{
          spree_post :create, arrangement: attributes_for(:arrangement)
        }.to change(Spree::Arrangement, :count).by(1)
      end

      it "redirects to arrangement#index" do
        spree_post :create, arrangement: attributes_for(:arrangement)
        expect(response).to redirect_to admin_arrangements_path
      end

    end

  end

  describe 'PATCH#update' do

    context "valid attributes" do

      before :each do
        @arrangement = create(:arrangement, title: 'Dogs', slug: '/dogs')
      end

      it "locates the requested @arrangement" do
        patch :update, id: @arrangement, arrangement: attributes_for(:arrangement)
        expect(assigns(:arrangement)).to eq(@arrangement) 
      end

    end

  end

  describe 'DELETE#destroy' do 
    
    before :each do
      @arrangement = create(:arrangement) 
    end
    
    it "deletes the arrangement" do 
      expect{
        spree_delete :destroy, id: @arrangement
      }.to change(Spree::Arrangement,:count).by(-1)
    end
    
    it "redirects to arrangements#index" do
      spree_delete :destroy, id: @arrangement 
      expect(response).to redirect_to admin_arrangements_url
    end

  end

end