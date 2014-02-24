class StaticController < ApplicationController
  def index
    if current_step == :form
      @match = Match.new
    end
  end
end
