module FrontendControllerHelpers
  module Controller
    def sign_in(user = double('user'))
      if user.nil?
        allow(request.env['warden']).to receive(:authenticate).and_throw(:warden, {:scope => :user})
        allow(controller).to receive(:spree_current_user).and_return(nil)
      else
        allow(request.env['warden']).to receive(:authenticate).and_return(user)
        allow(controller).to receive(:spree_current_user).and_return(user)
      end
    end
  end
end