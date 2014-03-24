class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :full_name

  belongs_to :kicker

  def full_name
    first_name + ' ' + last_name
  end

  def only_if_unconfirmed
    pending_any_confirmation {yield}
  end
end
