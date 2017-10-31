class PasswordCleaner
  include Sidekiq::Worker

  def perform
    Vault.where('expires_at <= ?', Time.now).destroy_all
  end
end
