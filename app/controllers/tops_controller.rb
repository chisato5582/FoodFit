class TopsController < ApplicationController
  layout 'top'
  skip_before_action :require_login, only: %i[index]

  def index
  end
end
