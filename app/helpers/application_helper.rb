module ApplicationHelper
  include Pagy::Frontend
  require 'pagy/extras/bootstrap'

  Pagy::DEFAULT[:items] = 10        # items per page

end
