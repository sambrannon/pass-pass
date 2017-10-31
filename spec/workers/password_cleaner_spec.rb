RSpec.describe PasswordCleaner do
  before(:each) do
    Vault.create(password: 'asdf', expires_at: Time.now)
  end

  it "deletes olds passwords" do
    expect(Vault.all.size).to eq 1
    expect {
      PasswordCleaner.perform_async
    }.to change(Vault.all, :size).by(-1)
  end
end
