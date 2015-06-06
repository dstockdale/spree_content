require 'spec_helper'

RSpec.describe Spree::Arrangement, type: :model do
  context 'validation' do
    it { is_expected.to have_one(:subject) }
  end
end
