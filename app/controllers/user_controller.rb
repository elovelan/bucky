class UserController < Devise::RegistrationsController

  def initialize
    #TODO: load Kicker model associated with user
    super
  end

  def new
    #TODO: associate new kicker
  end

  def edit
    puts 'Custom edit logic on render here'
    super
  end

  def update
    puts 'Custom edit logic on PUT here'
    super
  end
end