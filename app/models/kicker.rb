class Kicker < ActiveRecord::Base
  has_many :users

  def user_kicker
    #todo: create user type (kicker, parent) and then user_parent on kicker
    self.users.first
  end
end
