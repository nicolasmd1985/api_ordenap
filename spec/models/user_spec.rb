require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should validate_presence_of(:email) }
  it { should_not allow_value("nicolas@gmail").for(:email) }
  it { should allow_value("nicolas@gmail.com").for(:email) }
  it { should validate_presence_of(:uid) }
  it { should validate_presence_of(:provider) }

  it "deberia crear un usuario si el uid y el provider no existem" do
    expect{
      User.from_omniauth({uid: "1234", provider: "face", info:{email: "n@gmail.com"} })
    }.to change(User,:count).by(1)
  end

  it "deberia encontrar un usuario si el uid y el provider ya existen" do
    user = FactoryGirl.create(:user)
    expect{
      User.from_omniauth({uid: user.uid, provider: user.provider})
    }.to change(User,:count).by(0)
  end

  it "deberia retornar el usuario encontrado si el uid y el provider ya existen" do
    user = FactoryGirl.create(:user)
    expect(
      User.from_omniauth({uid: user.uid, provider: user.provider})
    ).to eq(user)
  end
end
