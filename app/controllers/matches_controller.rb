class MatchesController < ApplicationController
  before_action :verify_user

  def create
    @match = Match.new(match_params)

    if @match.valid?
      @match.save_to_google_doc
      session[:finished] = true
      redirect_to root_path, notice: 'Your crushes have been saved.'
    else
      render 'static/index'
    end
  end

  private

  def verify_user
    if !current_user
      redirect_to root_path, notice: 'You must sign in to twitter before continuing.'
    end
  end

  def match_params
    params.require(:match).permit(:match_1, :match_2, :match_3)
                          .merge(user_id: current_user.id)
  end
end
