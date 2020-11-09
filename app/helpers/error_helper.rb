module ErrorHelper

  # A method that we can call to pass whatever "object" we are using in a our form
  def show_errors_for(object)
    render partial: '/shared/errors', locals: { object: object }
  end

end