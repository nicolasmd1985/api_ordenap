require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should validate_presence_of :title}
  it { should belong_to(:user)}
  it { should validate_presence_of :description }
  it {should_not allow_value("a").for(:title)}
  it { should validate_lenght_of(:title).is_at_least(10)}
  it { should validate_lenght_of(:description).is_at_least(20)}

end
