class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :checklist
  belongs_to :onboarding
  belongs_to :profile
  has_one_attached :photo

  include MailForm::Delivery

  append :remote_ip, :user_agent, :session
  attributes :name, :email, :created_at

  def headers
    {
      to: "your.email@your.domain.com",
      subject: "User created an account"
    }
  end
end
