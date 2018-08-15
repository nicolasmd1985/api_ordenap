require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should validate_presence_of(:email) }
  it { should_not allow_value("nicolas@gmail").for(:email) }
  it { should allow_value("nicolas@gmail.com").for(:email) }
  it { should validate_presence_of(:uid) }
  it { should validate_presence_of(:provider) }
end
