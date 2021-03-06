class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bests
  has_many :duds
  has_many :topics
  has_many :comments

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    if user
      return user
    else
      registered_user = User.where(email: auth.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(first_name: auth.extra.raw_info.first_name,
          last_name: auth.extra.raw_info.last_name,
          provider: auth.provider,
          uid: auth.uid,
          email: auth.info.email,
          password: Devise.friendly_token[0,20],
        )
      end
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
