class Guide < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :visits
    after_create :welcome_send


  def welcome_send
    GuideMailer.welcome_email(self).deliver_now
  end
end
