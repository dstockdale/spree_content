require 'spec_helper'

RSpec.describe Spree::ContentsController, :type => :controller do

  context '#show' do

    it "should use the catch all route to place path in path variable" do
      spree_get :show, path: '/foobar'
      expect(controller.params).to eq({"path"=>"/foobar", "controller"=>"spree/contents", "action"=>"show"})
    end

    it 'returns a 404 for a non-existent page' do
      spree_get :show, path: '/it-dont-exist'
      expect(response.status).to eq(404)
    end

    let!(:arrangement) { create(:arrangement, slug: "/abc") }

    it 'returns a page' do
      spree_get :show, path: "/abc"
      expect(response.status).to eq(200)
      expect(response).to render_template(:show)
    end

  end

end