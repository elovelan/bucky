Bucky::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  #make smtp go, more info here http://stackoverflow.com/a/8189785/251983
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.default_options = { :from => 'bilitynim@gmail.com', :reply_to => 'bilitynim@gmail.com'}
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      #use with local smtp server- can be installed with gem install mailcatcher (see so post above)
      #:address => "localhost", :port => 1025,
      :enable_starttls_auto => true,
      #:tls => true,
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => "smpt.gmail.com",
      :authentication => :login,
      :user_name => "bilitynim@gmail.com",
      :password => "nimbility4"
  }
  config.action_mailer.raise_delivery_errors = true

  #don't precompile assets - works around haml error when pushing to heroku for now
  config.assets.initialize_on_precompile = false
end
