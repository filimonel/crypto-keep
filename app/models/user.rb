class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :portfolios, dependent: :destroy
  has_many :cryptos, through: :portfolios

  private

  def async_update
    UpdateUserJob.perform_later(self.id)
  end
end
