class User < ActiveRecord::Base
  has_secure_password

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates_length_of :password, minimum: 3
  validates_confirmation_of :password

  def self.authenticate_with_credentials(email, password)
    stripEmail = email.strip
    lower = stripEmail.downcase
    user = User.find_by(email: lower)
    if user && user.authenticate(password) 
      return user
    else 
      return nil 
    end
  end
end
