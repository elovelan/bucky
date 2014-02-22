class StaticController < ApplicationController

  # Automacially create an action method for each view created in the views/static directory
  # Each time a new static view is created, the associated action will also be created by the following:
  
  def show
    # Works with nested subfolders
    template = File.join(params[:controller], params[:page])
    render template
    rescue ActionView::MissingTemplate => e
    if e.message =~ %r{Missing template #{template}}
      raise ActionController::RoutingError, 'Not Found'
    else
      raise e
    end
  end

end