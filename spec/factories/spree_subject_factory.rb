FactoryGirl.define do
  factory :subject, :class => Spree::Subject do |f|
    f.subject { |p| p.association(:arrangement) }
    f.body "Lorem ipsum..."
  end
end