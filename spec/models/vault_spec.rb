RSpec.describe Vault do

  it "automatically generates a token on creation" do
    expect(Vault.create.token).to_not be_nil
  end
end