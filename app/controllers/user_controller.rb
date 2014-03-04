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

  def create
    super do |u|
      kicker = Kicker.create(:contact_email => resource.email)
      u.kicker_id = kicker.id
      u.save()
    end
  end

  protected

  #Next 2 methods override the redirect after "create"ing a new user
  #"inactive" variant handles models that are created but not authenticatable (e.g. not confirmed)
  #we shouldn't be allowing these so once confirmation is in place, remove the inactive variant
  def after_inactive_sign_up_path_for(resource)
    puts 'redirecting after sign_up'
    "/kickers/#{resource.kicker_id}"
  end

  def after_sign_up_path_for(resource)
    after_inactive_sign_up_path_for(resource)
  end
end