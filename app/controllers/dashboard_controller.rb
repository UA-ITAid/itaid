# frozen_string_literal: true

# :nodoc:
class DashboardController < ApplicationController
  def index
    respond_to do |format|
      format.html
    end
  end
end
