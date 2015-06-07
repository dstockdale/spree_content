require 'spec_helper'

RSpec.describe Spree::Admin::ArrangementsController, :type => :controller do

  stub_authorization!
  
  context '#index' do

    let!(:arrangement) { create(:arrangement, slug: "/abc") }

    it 'returns a page' do
      spree_get :index
      expect(response.status).to eq(200)
      expect(response).to render_template(:index)
    end

  end

end