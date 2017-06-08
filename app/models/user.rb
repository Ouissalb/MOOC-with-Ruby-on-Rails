class User < ActiveRecord::Base

  #Regular expression for validating emails
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  #To save all emails in downcase
  before_save { self.email = email.downcase }

  #Validating name :
  validates :name,  presence: true, length: { maximum: 50 }

  #Validating email :
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  #Validating password
  validates :password, presence: true, length: { minimum: 6 }


  has_secure_password
  
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

end
