class Vault < ApplicationRecord
  validates :password, presence: true
  validates :token, presence: true, uniqueness: true
  before_validation :generate_token

  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
