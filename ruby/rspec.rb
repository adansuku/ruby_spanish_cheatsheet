# Con RSpec
RSpec.describe User, type: :model do
  it "es válido con nombre y email" do
    user = User.new(name: "Adan", email: "adan@example.com")
    expect(user).to be_valid
  end
end
