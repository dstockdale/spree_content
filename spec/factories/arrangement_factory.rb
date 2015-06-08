FactoryGirl.define do
  factory :arrangement, :class => Spree::Arrangement do
    title "New page"
    slug "/abc"
    context "Page"
  end
end