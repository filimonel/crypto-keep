class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :portfolios, dependent: :destroy
  has_many :cryptos, through: :portfolios

  # after_commit :async_update # Run on create & update

  # private
  
  # # Option 1: Queue job from a model
  # def async_update
  #   UpdateUserJob.set(wait: 5.seconds).perform_later(self.id)
  # end
end
