require 'spec_helper'

RSpec.describe Spree::StaticContentsController, :type => :controller do

  context '#show' do

    it "set the path variable" do
      sign_in nil
      create(:arrangement, slug: "/foobar")
      get :show, path: 'foobar'
      expect(controller.params).to eq({"path"=>"foobar", "controller"=>"spree/static_contents", "action"=>"show"})
    end

    it 'returns a 404 for a non-existent page' do
      sign_in nil
      get :show, path: 'it-dont-exist'
      expect(response.status).to eq(404)
    end

    it 'returns a page' do
      sign_in nil
      create(:arrangement, slug: "/abc")
      get :show, path: "abc"
      expect(response.status).to eq(200)
      expect(response).to render_template(:show)
    end

  end

end