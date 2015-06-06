require 'spec_helper'

RSpec.describe Spree::Subject, type: :model do
  context 'validation' do
    it { is_expected.to have_many(:arrangements) }
  end
end
