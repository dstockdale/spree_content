FactoryGirl.define do
  factory :arrangement, :class => Spree::Arrangement do |f|
    f.subject { |p| p.association(:subject) }
    f.title "New page"
  end
end