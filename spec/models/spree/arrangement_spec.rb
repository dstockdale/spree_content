require 'spec_helper'

RSpec.describe Spree::Arrangement, type: :model do
  context 'validation' do
    it { is_expected.to belong_to(:subject) }
  end
end
