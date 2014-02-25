class MatchesController < ApplicationController
  def create
    @match = Match.new(match_params)

    if @match.valid?
      @match.save_to_google_doc
      session[:finished] = true
      redirect_to root_path, notice: t('.notice', scope: :flash)
    else
      render 'static/index'
    end
  end

  private

  def match_params
    params.require(:match).permit(:match_1, :match_2, :match_3)
                          .merge(user_id: current_user.id)
  end
end
