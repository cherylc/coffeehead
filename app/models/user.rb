class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :first_name, :last_name, :profile, :email, :password, :password_confirmation, :remember_me

  has_paper_trail

  def full_name
    if first_name && last_name
      "#{first_name} #{last_name}"
    else
      email
    end
  end

  def admin?
    profile == "admin"
  end
end
