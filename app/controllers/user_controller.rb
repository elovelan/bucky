class UserController < Devise::RegistrationsController

  def initialize
    #TODO: load Kicker model associated with user
    super
  end

  def new
    #stole code from RegistrationController#new method - no way to override this that i can see since the two calls in #new
    #1- build the new 'User' object (resource) and then render it
    build_resource({})
    self.resource.email = params[:email]
    respond_with self.resource
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