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

      before :each do
        @body = {"body"=>"It was a dark and stormy night and..."}
      end

      it "saves the new arrangement in the database" do
        expect{
          spree_post :create, arrangement: attributes_for(:arrangement, subject_attributes: @body)
        }.to change(Spree::Arrangement, :count).by(1)
      end

      it "redirects to arrangement#indx" do
        spree_post :create, arrangement: attributes_for(:arrangement, subject_attributes: @body)
        expect(response).to redirect_to admin_arrangements_path
      end

      it "always has a subject" do
        spree_post :create, arrangement: attributes_for(:arrangement, subject_attributes: @body)
        arrangement = Spree::Arrangement.last
        expect(arrangement.subject).to be_a(Spree::Subject)
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

end