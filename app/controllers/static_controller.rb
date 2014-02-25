class StaticController < ApplicationController
  def index
    @match = Match.new if current_step == :form
  end
end
